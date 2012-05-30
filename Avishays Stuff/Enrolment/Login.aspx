<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row" style="margin-top: 15px;">
        <div class="span8">
            <div class="hero-unit">
                <div class="row">
                    <h1>
                        Please login</h1>
                    <p>
                        To view your units &amp; grades.</p>
                    <p>
                        <a href="About.aspx" class="btn btn-primary btn-large">Learn more </a>
                    </p>
                </div>
            </div>
        </div>
        <div class="span4">
            <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" Width="307px">
                <CheckBoxStyle CssClass="loginCheckbox" />
                <LayoutTemplate>
                    <h2>
                        Login</h2>
                    <fieldset>
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" CssClass="control-label">User Name:</asp:Label>
                        <asp:TextBox ID="Username" runat="server" CssClass="input-xlarge"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="input-xlarge"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                        <br />
                        <div style="margin-left: 20px;">
                            <asp:CheckBox ID="RememberMe" runat="server" CssClass="checkbox" Text="Remember me" />
                        </div>
                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                    </fieldset>
                    <div class="form-actions">
                        <asp:Button ID="LoginButton" runat="server" CssClass="btn btn-primary" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                    </div>
                </LayoutTemplate>
                <TitleTextStyle Font-Bold="True" HorizontalAlign="Left" />
            </asp:Login>
        </div>
    </div>
</asp:Content>
