<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-header">
        <h1>
            Subject Details - <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </h1>
    </div>
    <ul class="breadcrumb">
        <li><a href="/Enrolment/Courses.aspx">Courses</a> <span class="divider">/</span> </li>
        <li class="active">Course Details</li>
    </ul>
    <div class="row">
        <div class="span8">
            <asp:ObjectDataSource ID="Courses" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllSubjectsByCourseID" TypeName="DataAccess.StudentDatasourceTableAdapters.SubjectsTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int64" />
                    <asp:Parameter Name="Original_name" Type="String" />
                    <asp:Parameter Name="Original_subject_code" Type="String" />
                    <asp:Parameter Name="Original_course_id" Type="Int64" />
                    <asp:Parameter Name="Original_unit_coordinator_id" Type="Int64" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="subject_code" Type="String" />
                    <asp:Parameter Name="course_id" Type="Int64" />
                    <asp:Parameter Name="unit_coordinator_id" Type="Int64" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="CourseID" QueryStringField="id" Type="Int64" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="subject_code" Type="String" />
                    <asp:Parameter Name="course_id" Type="Int64" />
                    <asp:Parameter Name="unit_coordinator_id" Type="Int64" />
                    <asp:Parameter Name="Original_id" Type="Int64" />
                    <asp:Parameter Name="Original_name" Type="String" />
                    <asp:Parameter Name="Original_subject_code" Type="String" />
                    <asp:Parameter Name="Original_course_id" Type="Int64" />
                    <asp:Parameter Name="Original_unit_coordinator_id" Type="Int64" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="Courses" EmptyDataText="No subjects found." CssClass="table table-bordered table-striped">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="subject_code" HeaderText="subject_code" SortExpression="subject_code" />
                    <asp:BoundField DataField="unit_coordinator_id" HeaderText="unit_coordinator_id" SortExpression="unit_coordinator_id" />
                </Columns>
            </asp:GridView>
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
</asp:Content>
