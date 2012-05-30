<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Subject.aspx.cs" Inherits="Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="Courses">
        <ItemTemplate>
            <div class="page-header">
                <h1>
                    <%# DataBinder.Eval(Container.DataItem,"name") %>
                </h1>
            </div>
            <ul class="breadcrumb">
                <li><a href="/Enrolment/Courses.aspx">Courses</a> <span class="divider">/</span> </li>
                <li><a href="/Enrolment/Course.aspx?id=<%# DataBinder.Eval(Container.DataItem, "course_id") %>">
                    <%# DataBinder.Eval(Container.DataItem, "course_name") %></a> <span class="divider">/</span> </li>
                <li class="active">
                    <%# DataBinder.Eval(Container.DataItem, "name") %></li>
            </ul>
            <div class="row">
                <div class="span8">
                    <p>Tutor: <%# DataBinder.Eval(Container.DataItem, "u_name") %></p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vel purus augue, quis tempus ligula. Pellentesque lectus neque, bibendum viverra rhoncus at, posuere quis mauris. Aliquam ligula mi, suscipit gravida ullamcorper sit amet, suscipit non neque. Morbi quis elit lacus, nec ullamcorper neque. Phasellus at magna id lacus porttitor placerat. Duis at ligula sit amet felis lobortis pretium quis vitae magna. Nulla sed est lectus, ut consequat neque. Ut dolor nunc, tincidunt vitae lobortis vitae, feugiat sagittis lorem.</p>
                    <p>
                        Morbi nisl purus, aliquet eget semper eu, volutpat eget magna. Maecenas leo tortor, pharetra non laoreet et, varius et erat. Aenean facilisis convallis molestie. Fusce a ligula in tortor bibendum tempus in at est. Integer ac consectetur lacus. Praesent egestas gravida enim eget luctus. Duis molestie malesuada justo, nec iaculis nisi aliquam id.</p>
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
    <asp:ObjectDataSource ID="Courses" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetSubjectByID" TypeName="DataAccess.StudentDatasourceTableAdapters.SubjectsTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
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
            <asp:QueryStringParameter Name="SubjectID" QueryStringField="id" Type="Int64" />
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
</asp:Content>
