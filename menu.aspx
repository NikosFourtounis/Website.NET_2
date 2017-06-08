<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 273px;
        }
        .auto-style2 {
            height: 32px;
        }
        .auto-style3 {
            width: 273px;
            height: 32px;
        }
    </style>
</head>
<body style="color: #000000; background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div>
    
        Welcome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Log out" />
                </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
            <asp:Button ID="Button5" runat="server"  OnClick="Button5_Click" style="; margin-left: 0px" Text="Search Products" Width="153px" />
                </td>
                <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="View Products" Width="153px"   />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Registrer Customer"   Width="153px" />
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="New Order"  Width="153px" OnClick="Button8_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
        <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
                    <asp:Image ID="Image1" runat="server" ImageUrl="male_avatar.jpg" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
