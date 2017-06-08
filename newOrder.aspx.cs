using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System;
using System.Collections;
public partial class WebSite4_newOrder : System.Web.UI.Page
{
    SqlConnection mscon = new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Password=E#4acyxg;Integrated Security=True");
    ArrayList textboxes = new ArrayList();
    Label[] labels = new Label[5];
    protected void Page_Load(object sender, EventArgs e)
    {
        textboxes.Add(TextBox1);
        textboxes.Add(TextBox2);
        textboxes.Add(TextBox3);
        textboxes.Add(TextBox4);
        textboxes.Add(TextBox5);
        labels[0] = Label7;
        labels[1] = Label8;
        labels[2] = Label9;
        labels[3] = Label10;
        labels[4] = Label11;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string commandText = "INSERT INTO Orders Values (null,null,null,null,null,null,null,null,null,null,null,null,null)";
        string commandText4 = "INSERT INTO Order_Details Values ((SELECT TOP (1) OrderID  FROM Orders ORDER BY OrderID DESC),@ProductID1,(SELECT UnitPrice FROM Products WHERE ProductID=@ProductID1),1,0)";
        
        using (mscon)
        {
            SqlCommand command = new SqlCommand(commandText, mscon);
            SqlCommand command4 = new SqlCommand(commandText4, mscon);

            try
            {
                mscon.Open();
                int i= 0;
                command.ExecuteNonQuery();
                command4.Parameters.Add("@ProductID1", SqlDbType.Int, 20);
                foreach (TextBox obj in textboxes) {
                    if (!obj.Text.Equals(""))
                    {
                        
                        command4.Parameters["@ProductID1"].Value = obj.Text;
                        command4.ExecuteNonQuery();
                        labels[i].Text = "added";
                    }
                    i++;
                }
            }
            catch (Exception exc)
            {
                Label7.Text = exc.ToString();
            }
            finally
            {
                mscon.Close();
            }
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}