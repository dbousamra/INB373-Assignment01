<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="CourseData">
        <ItemTemplate>
            <div class="page-header">
                <h1>
                    <%# DataBinder.Eval(Container.DataItem,"name") %>
                </h1>
            </div>
            <ul class="breadcrumb">
                <li><a href="/Enrolment/Courses.aspx">Courses</a> <span class="divider">/</span> </li>
                <li class="active">
                    <%# DataBinder.Eval(Container.DataItem,"name") %></li>
            </ul>
            <div class="row">
                <div class="span8">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <th colspan="4">
                                Subjects
                            </th>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="Courses">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "subject_code")%>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem,"name") %>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem, "c_name")%>
                                        </td>
                                        <td>
                                            <a href="Subject.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>" class="btn btn-info">Subject details</a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
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
        </ItemTemplate>
    </asp:Repeater>
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
    <asp:ObjectDataSource ID="CourseData" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="getCourseByID" TypeName="DataAccess.StudentDatasourceTableAdapters.CourseTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter Name="CourseID" QueryStringField="id" Type="Int64" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
