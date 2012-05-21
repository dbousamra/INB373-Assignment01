<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Subjects.aspx.cs" Inherits="Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="well">
        <h2>Subjects</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
        DataSourceID="Students" CssClass="table table-bordered table-striped">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="subject_code" HeaderText="Subject Code" SortExpression="subject_code" />
            <asp:BoundField DataField="course_id" HeaderText="Course ID" SortExpression="course_id" />
            <asp:BoundField DataField="unit_coordinator_id" HeaderText="Unit Coordinator ID" SortExpression="unit_coordinator_id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Students" runat="server" ConnectionString="<%$ ConnectionStrings:LocalTestConnectionString %>"
        SelectCommand="SELECT * FROM [Subjects]">        
    </asp:SqlDataSource>
    </div>
</asp:Content>
