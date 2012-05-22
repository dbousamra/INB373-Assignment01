<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Subjects.aspx.cs" Inherits="Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="well">
        <h2>Courses<asp:ObjectDataSource ID="Courses" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllCourses" 
                TypeName="DataAccess.StudentDatasourceTableAdapters.CourseTableAdapter">
            </asp:ObjectDataSource>
        </h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
        DataSourceID="Courses" CssClass="table table-bordered table-striped">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="faculty_id" HeaderText="Faculty ID" SortExpression="faculty_id" />
            <asp:BoundField DataField="course_code" HeaderText="Course Code" SortExpression="course_code" />
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
