<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        Dashboard</h1>
    <br>
    <div class="well">
        <h1>Welcome
        <%# User.Identity.Name %></h1>
        <p>Below is your user information.</p>

    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
        DataSourceID="Students" CssClass="table table-bordered table-striped">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                SortExpression="id" />
            <asp:BoundField DataField="number" HeaderText="Number" SortExpression="number" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="enrolment_type_id" HeaderText="Enrolment type ID" SortExpression="enrolment_type_id" />
            <asp:BoundField DataField="user_type_id" HeaderText="User type ID" SortExpression="user_type_id" />
            <asp:BoundField DataField="course_id" HeaderText="Course ID" SortExpression="course_id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Students" runat="server" ConnectionString="<%$ ConnectionStrings:MarksConnectionString %>"
        SelectCommand="SELECT * FROM [User] WHERE ([number] = @number)">
        <SelectParameters>
            <asp:Parameter Name="number" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>
