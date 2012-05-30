<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-header">
        <h1>
            Contact</h1>
    </div>
    <p>
        Please contact us using this page if you have any questions.</p>
    <form method="post" action="Contact.aspx" class="form-horizontal" id="contact_form"
    name="contact_form">
    <div class="form-horizontal" style="margin-top: 20px;">
        <fieldset>
            <div class="control-group">
                <label class="control-label" for="name">
                    Name</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" name="name" id="name" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="email">
                    Email</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" name="email" id="email" />
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="subject">
                    Subject</label>
                <div class="controls">
                    <input type="text" class="input-xlarge" name="subject" id="subject" /></div>
            </div>
            <div class="control-group">
                <label class="control-label" for="message">
                    Message</label>
                <div class="controls">
                    <textarea name="message" id="message" class="input-xlarge"></textarea></div>
            </div>
            <div class="form-actions">
                <input type="submit" value="Send" class="btn btn-primary" />
                <input type="reset" value="Cancel" class="btn" />
            </div>
        </fieldset>
    </div>
    </form>
</asp:Content>
