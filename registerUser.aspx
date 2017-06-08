<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerUser.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 219px;
        }
        .auto-style2 {
            width: 344px;
        }
    </style>
</head>
<body style="color: #000000; background-color: #FFFFCC">
    <form id="form1" runat="server">
    <div font-weight: 700">
    
        <p style="margin-left: 360px">
    
        Register Page<br />
        <br />
    
        </p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            </td>
            <td class="auto-style1">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style1">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
        <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="auto-style1">
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Surname:"></asp:Label>
             </td>
            <td class="auto-style1">
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px"></asp:TextBox>
             </td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="auto-style2">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Back" />
             </td>
            <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Width="77px" />
             </td>
            <td>
            <asp:Label ID="Label5" runat="server"></asp:Label>
             </td>
              <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        </tr>
    </table>
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</bod>
</html>
