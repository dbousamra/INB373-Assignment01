<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login"
    MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="hero-unit">
        <div class="row">
            <div class="span6">
                <h1>
                    Please login</h1>
                <p>
                    Subtitle.</p>
                <p>
                    <a href="About.aspx" class="btn btn-primary btn-large">Learn more </a>
                </p>
            </div>
            <div class="span3">
                <br />
                <br />
                <br />
                <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" 
                    Width="307px">
                    <CheckBoxStyle CssClass="loginCheckbox" />
                    <TitleTextStyle Font-Bold="True" HorizontalAlign="Left" />
                </asp:Login>
            </div>
        </div>
    </div>
</asp:Content>
