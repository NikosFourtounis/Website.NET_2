<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchProducts.aspx.cs" Inherits="SearchProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            text-decoration: underline;
        }
        .auto-style2 {
            width: 224px;
        }
    </style>
</head>
<body style="color: #000000; background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <p style="margin-left: 200px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        Search Orders</p>
        </div>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Choose date 1:"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="OrderDate" DataValueField="OrderDate" >
            </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Choose date 2:"></asp:Label>
                    </td>
                    <td>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="OrderDate" DataValueField="OrderDate" >
            </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show list" />
                     </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" Width="82px" />
                     </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
                     </td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:icsd13195ConnectionString %>" SelectCommand="SELECT DISTINCT [OrderDate] FROM [Orders]"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Choose Customer:"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="ContactName" DataValueField="ContactName" style="margin-left: 26px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            </asp:DropDownList>
        </p>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:icsd13195ConnectionString %>" SelectCommand="SELECT DISTINCT [ContactName], [CustomerID] FROM [Customers]"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label2" runat="server" Text="Products found:"></asp:Label>
        <br />
        <br />
        <br />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
