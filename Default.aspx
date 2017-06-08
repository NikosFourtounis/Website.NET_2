<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97px;
        }
        .auto-style2 {
            width: 157px;
        }
    </style>
</head>
<body style="color: #000000; background-color: #FFFFCC">
    <form id="form1" runat="server">
        <table style="width:100%; margin-left: 179px;">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                &nbsp;:</td>
                <td class="auto-style2">
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                &nbsp;:</td>
                <td class="auto-style2">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                 <td>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                 <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Connect" Height="24px" Width="127px" />
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registerUser.aspx">Register Here</asp:HyperLink>
                </td>
            </tr>
        </table>
       
    </form>
</body>
</html>
