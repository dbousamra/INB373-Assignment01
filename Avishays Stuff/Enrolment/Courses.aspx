<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Subjects.aspx.cs" Inherits="Subjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page-header">
        <h1>
            Courses</h1>
    </div>
    <table class="table table-bordered table-striped">
        <thead>
            <th colspan="5">
                Courses
            </th>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="Courses">
                <ItemTemplate>
                    <tr>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "course_code")%>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "name")%>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "f_name")%>
                        </td>
                        <td>
                            <%# DataBinder.Eval(Container.DataItem, "num_subjects")%> subjects
                        </td>
                        <td>
                            <a href="Course.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>" class="btn btn-info">Course details</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <asp:ObjectDataSource ID="Courses" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllCourses" TypeName="DataAccess.StudentDatasourceTableAdapters.CourseTableAdapter"></asp:ObjectDataSource>
        </tbody>
    </table>
</asp:Content>
