<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerCustomer.aspx.cs" Inherits="register" %>

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
    <div  font-weight: 700">
    
        <p style="BOLD; margin-left: 40px;" style="margin-left: 280px">
    
        &nbsp;&nbsp;&nbsp;&nbsp;
    
        Register Page<br />
        </p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
        <asp:Label ID="Label1" runat="server" Text="CustomerID:"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="CompanyName:"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        <asp:Label ID="Label3" runat="server" Text="ContactName:"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="ContactTitle:"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        <asp:Label ID="Label6" runat="server" Text="Address :"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            <asp:Label ID="Label7" runat="server" Text="City:"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        <asp:Label ID="Label8" runat="server" Text="Region:"></asp:Label>
            </td>
            <td>
        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            <asp:Label ID="Label9" runat="server" Text="PostalCode:"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 0px" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
            <asp:Label ID="Label12" runat="server" Text="Country:"></asp:Label>
            </td>
            <td><asp:TextBox ID="TextBox11" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        <asp:Label ID="Label10" runat="server" Text="Phone :"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 0px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        <asp:Label ID="Label13" runat="server" Text="Fax :"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 0px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
            <asp:Label ID="Label11" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Register" Width="77px" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Menu" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <br />
    
    </div>
        <br />
        <br />
        <br />
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
    </body>
</html>
