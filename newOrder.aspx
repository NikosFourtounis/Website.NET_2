<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newOrder.aspx.cs" Inherits="WebSite4_newOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 286px;
        }
    </style>
</head>
<body style="color: #000000; background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div>
    
        <p style="BOLD; margin-left: 40px;" style="margin-left: 280px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;
    
        New Order<br />
        </p>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Product 1"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Product 2"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Product 3"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label9" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Product 4"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Label ID="Label10" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Product 5"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label11" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Customer "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ContactName" DataValueField="ContactName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:icsd13195ConnectionString %>" SelectCommand="SELECT [ContactName] FROM [Customers]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Order" />
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" />
        </p>
    </form>
</body>
</html>
