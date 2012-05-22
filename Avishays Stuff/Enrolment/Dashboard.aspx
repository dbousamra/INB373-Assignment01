<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-header">
        <h1>
            Dashboard</h1>
    </div>
    <div class="row">
        <div class="span6">
            <h2>
                Welcome
                <%# User.Identity.Name %></h2>
            <p>
                Below is your user information.</p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
                DataSourceID="Students" CssClass="table table-bordered table-striped" CellSpacing="-1"
                GridLines="None" EnableTheming="True">
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
            <asp:SqlDataSource ID="Students" runat="server" ConnectionString="<%$ ConnectionStrings:LocalTestConnectionString %>"
                SelectCommand="SELECT * FROM [User] WHERE ([number] = @number)">
                <SelectParameters>
                    <asp:Parameter Name="number" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="span6">
            <h2>
                COURSE NAME</h2>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <td>
                            1
                        </td>
                        <td>
                            -
                        </td>
                    </tr>
                    <tr>
                        <td>
                            2
                        </td>
                        <td>
                            -
                        </td>
                    </tr>
                    <tr>
                        <td>
                            3
                        </td>
                        <td>
                            -
                        </td>
                    </tr>
                    <tr>
                        <td>
                            4
                        </td>
                        <td>
                            -
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
