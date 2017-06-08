using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;

public partial class register : System.Web.UI.Page
{
    SqlConnection mscon = new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string commandText = "Insert into RegisteredUser values (@username,@password, @name, @surname, getdate(), '');";
        using (mscon)
        {
            SqlCommand command = new SqlCommand(commandText, mscon);
            command.Parameters.Add("@username", SqlDbType.VarChar, 20).Value = TextBox1.Text;
            
            command.Parameters.Add("@name", SqlDbType.VarChar, 20).Value = TextBox3.Text;
            command.Parameters.Add("@surname", SqlDbType.VarChar, 20).Value = TextBox4.Text;
            int result = TextBox2.Text.GetHashCode();
            command.Parameters.Add("@password", SqlDbType.VarChar, 20).Value = result.ToString();
            try
            {
                mscon.Open();
                command.ExecuteNonQuery();
                Label5.Text = "Succesfully registered";
            }
            catch
            {
                Label5.Text = "Error occured";
            }
            finally
            {
                mscon.Close();
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}