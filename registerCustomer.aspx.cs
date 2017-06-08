using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection mscon = new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string commandText = "Insert into Customers values (@CustomerID ,@CompanyName, @ContactName, @ContactTitle,@Address,@City,@Region,@PostalCode,@Country,@Phone,@Fax);";
        using (mscon)
        {
            SqlCommand command = new SqlCommand(commandText, mscon);
            command.Parameters.Add("@CustomerID ", SqlDbType.NChar, 5).Value = TextBox1.Text;
            command.Parameters.Add("@CompanyName ", SqlDbType.NVarChar, 40).Value = TextBox2.Text;
            command.Parameters.Add("@ContactName ", SqlDbType.NVarChar, 30).Value = TextBox3.Text;
            command.Parameters.Add("@ContactTitle", SqlDbType.NVarChar, 30).Value = TextBox4.Text;
            command.Parameters.Add("@Address", SqlDbType.NVarChar, 60).Value = TextBox5.Text;
            command.Parameters.Add("@City", SqlDbType.NVarChar, 15).Value = TextBox6.Text;
            command.Parameters.Add("@Region", SqlDbType.NVarChar, 15).Value = TextBox7.Text;
            command.Parameters.Add("@PostalCode", SqlDbType.NVarChar, 10).Value = TextBox8.Text;
            command.Parameters.Add("@Country", SqlDbType.NVarChar, 15).Value = TextBox11.Text;
            command.Parameters.Add("@Phone", SqlDbType.NVarChar, 24).Value = TextBox9.Text;
            command.Parameters.Add("@Fax", SqlDbType.NVarChar, 24).Value = TextBox10.Text;
            try
            {
                mscon.Open();
                command.ExecuteNonQuery();
                Label11.Text = "Succesfully registered";
            }
            catch(Exception ex)
            {
                Label11.Text = ex.ToString();
            }
            finally
            {
                mscon.Close();
            }
        }
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}