<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 20%;
            margin-left: 596px;
        }
        .style2
        {
            width: 60px;
        }
        .style3
        {
            width: 193px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <p>
            <asp:Label ID="Label1" runat="server" Visible="False" 
                style="text-align: center"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table class="style1" align="left">
            <tr>
                <td class="style2">
                    Username:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" TextMode="Password" 
                        Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                        Width="60px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
