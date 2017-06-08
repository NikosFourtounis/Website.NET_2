using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SearchProducts : System.Web.UI.Page
{
    SqlConnection mscon = new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String str = "Select Products.ProductName from Orders,Customers,Order_Details,Products where OrderDate between @date1 and @date2 and Customers.ContactName=@Customer and Orders.CustomerID=Customers.CustomerID and Order_Details.OrderID=Orders.OrderID and Order_Details.ProductID=Products.ProductID";
        SqlCommand command = new SqlCommand(str, mscon);
        DateTime date1 = Convert.ToDateTime(DropDownList1.SelectedValue.ToString());
        DateTime date2 = Convert.ToDateTime(DropDownList2.SelectedValue.ToString());
        command.Parameters.AddWithValue("@date1", date1);
        command.Parameters.AddWithValue("@date2", date2);
        command.Parameters.AddWithValue("@Customer", DropDownList3.Text);

        mscon.Open();
        command.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter(command);
        sda.SelectCommand = command;
        DataSet ds = new DataSet();
        sda.Fill(ds, "Orders");
        GridView1.DataSource = ds;
        GridView1.DataBind();

        mscon.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}