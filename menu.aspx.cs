using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserName"]==null)
        {
            Response.Redirect("default.aspx");
        }
       SqlConnection mscon= new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Integrated Security=True");
       string commandText = "SELECT name,surname,imageurl " +
                     "FROM registereduser WHERE username= @Name";
       using (mscon)
       {
           SqlCommand command = new SqlCommand(commandText, mscon);
           command.Parameters.Add("@Name", SqlDbType.VarChar, 20).Value = Session["Username"];
           try
           {
               mscon.Open();
               SqlDataReader reader;
               reader = command.ExecuteReader();
               while (reader.Read())
               {
                   Label2.Text = reader["surname"].ToString();
                   Label3.Text = reader["name"].ToString();

               }
               

           }
           catch
           {
               Label4.Text = "Error occured";
           }
           finally
           {
               mscon.Close();
           }
       }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductList.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("registerCustomer.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("selectrack.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchProducts.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchProducts.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("pilotsteams.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["UserName"] =null;
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("newOrder.aspx");
    }
    
}
