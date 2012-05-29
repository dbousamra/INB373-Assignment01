<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-header">
        <h1>
            Course Details</h1>
    </div>
    <div class="row">
        <div class="span4">
            <p>
                </p>
            
        </div>
        <div class="span4">
            <p>
                </p>
        </div>
        <div class="span4">
            <div class="thumbnail">
                <img src="assets/images/about.jpg" alt="" />
                <div class="caption">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non.</p>
                </div>
            </div>
        </div>
    </div>

    <asp:ObjectDataSource ID="Courses" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllCourses" TypeName="DataAccess.StudentDatasourceTableAdapters.CourseTableAdapter"></asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Courses" CssClass="table table-bordered table-striped">
        <Columns>            
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="f_name" HeaderText="Faculty" SortExpression="f_name" />
            <asp:BoundField DataField="course_code" HeaderText="Course Code" SortExpression="course_code" />
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Course.aspx?id={0}" Text="View course details" ControlStyle-CssClass="btn btn-info"/>
        </Columns>
    </asp:GridView>
</asp:Content>

