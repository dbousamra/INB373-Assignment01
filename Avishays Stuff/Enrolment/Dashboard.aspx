<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
        <ItemTemplate>
            <div class="page-header">
                <h1>
                    Dashboard</h1>
            </div>
            <div class="row">
                <div class="span6">
                    <h2>
                        Welcome
                        <%# DataBinder.Eval(Container.DataItem,"name") %>
                        <small>
                            <%# User.Identity.Name %></small></h2>
                    <p>
                        Below is your user information.</p>
                    <table class="table table-bordered table-striped">
                        <tbody>
                            <tr>
                                <td>
                                    Name:
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem,"name") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Student #:
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem,"number") %>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Enrolment type:
                                </td>
                                <td>
                                    <div style="display: <%# System.Convert.IsDBNull(DataBinder.Eval(Container.DataItem, "course_name")) ? "none" : "block"%>;">
                                        <%# DataBinder.Eval(Container.DataItem,"enrolment_type") %>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Course:
                                </td>
                                <td>
                                    <div style="display: <%# System.Convert.IsDBNull(DataBinder.Eval(Container.DataItem, "course_name")) ? "none" : "block"%>;">
                                        <%# DataBinder.Eval(Container.DataItem,"course_name") %>
                                    </div>
                                    <div style="display: <%# System.Convert.IsDBNull(DataBinder.Eval(Container.DataItem, "course_name")) ? "block" : "none"%>;">
                                        <a class="btn btn-primary btn-large" href="/Enrolment/Courses.aspx">Enrol now</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="span6" style="display: <%# System.Convert.IsDBNull(DataBinder.Eval(Container.DataItem, "course_name")) ? "block" : "none"%>;">
                    No subjects found.
                </div>
                <div class="span6" style="display: <%# System.Convert.IsDBNull(DataBinder.Eval(Container.DataItem, "course_name")) ? "none" : "block"%>;">
                    <h2>
                        <%# DataBinder.Eval(Container.DataItem,"course_name") %></h2>
                    <p>
                        You are following these subjects:</p>
                    <table class="table table-bordered table-striped">
                        <tbody>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource2">
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem,"subject_code") %>
                                        </td>
                                        <td>
                                            <%# DataBinder.Eval(Container.DataItem,"name") %>
                                        </td>
                                        <td>
                                            <a href="Subject.aspx?id=<%# DataBinder.Eval(Container.DataItem, "subject_id")%>" class="btn btn-info">
                                                <div class="icon-info-sign icon-white">
                                                </div>
                                            </a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </tbody>
                    </table>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="getUserByName" TypeName="DataAccess.StudentDatasourceTableAdapters.UserTableAdapter">
        <SelectParameters>
            <asp:Parameter Name="userName" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="getSubjectsByUserID" TypeName="DataAccess.StudentDatasourceTableAdapters.SubjectsTableAdapter">
        <SelectParameters>
            <asp:Parameter Name="userID" Type="Int64" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
