<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>
        Dashboard</h1>
    <br>
    <div class="hero-unit">
        <h1>Welcome
        <%# User.Identity.Name %></h1>
    </div>
    <div class="well summary">
        <ul>
        </ul>
    </div>
    <h2>
        Current Sales</h2>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>
                    Make
                </th>
                <th>
                    Model
                </th>
                <th>
                    Price
                </th>
                <th>
                    Mileage
                </th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
        DataSourceID="Students">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                SortExpression="id" />
            <asp:BoundField DataField="number" HeaderText="number" SortExpression="number" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="enrolment_type_id" HeaderText="enrolment_type_id" SortExpression="enrolment_type_id" />
            <asp:BoundField DataField="user_type_id" HeaderText="user_type_id" SortExpression="user_type_id" />
            <asp:BoundField DataField="course_id" HeaderText="course_id" SortExpression="course_id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Students" runat="server" ConnectionString="<%$ ConnectionStrings:LocalTestConnectionString %>"
        SelectCommand="SELECT * FROM [User] WHERE ([number] = @number)">
        <SelectParameters>
            <asp:Parameter Name="number" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    &nbsp;
</asp:Content>
