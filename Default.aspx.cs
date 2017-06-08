using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection mscon= new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Password=E#4acyxg;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {

        string commandText = "SELECT count(*) FROM registereduser WHERE username=@Name AND password=@password";
        
        using (mscon)
        {         
            SqlCommand command = new SqlCommand(commandText, mscon);
            command.Parameters.Add("@Name", SqlDbType.VarChar, 20).Value = TextBox1.Text;
            int result = TextBox2.Text.GetHashCode();
            command.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = result.ToString();
            try
            {
                mscon.Open();
                int rslt = (int)command.ExecuteScalar();
                if (rslt == 1)
                {
                    Session["UserName"] = TextBox1.Text;
                    Response.Redirect("menu.aspx");

                }
                else
                {
                    Label4.Text = "Invalid username";
                }
            }
            catch (Exception exc)
            {
                
                Label4.Text = exc.ToString();
            }
            finally
            {
                mscon.Close();
            }
        }
        
    }



    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}