<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="students.Pages.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Resources/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="jumbotron">
                <h1>Demo Project for display image from database</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Insert form
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label>Student Name</label>
                            <asp:TextBox class="form-control" runat="server" ID="Name"/>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <asp:TextBox class="form-control" runat="server" ID="Address"/>
                        </div>
                        <div class="form-group">
                            <label>Select Photo</label>
                            <asp:FileUpload ID="ImageFileUpload" runat="server" />
                        </div>
                        <asp:Label ID="Message" runat="server"></asp:Label>
                        <asp:Button runat="server" ID="SubmitButton" Text="submit" CssClass="btn btn-primary" OnClick="SubmitButton_Click" />
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Student list
                    </div>
                    <div class="panel-body">
                        
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="FetchStudentsSqlDataSource">
                                <Columns>
                                    <asp:BoundField DataField="StudentId" HeaderText="StudentId" InsertVisible="False" ReadOnly="True" SortExpression="StudentId" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    <asp:HyperLinkField DataNavigateUrlFields="StudentId" DataNavigateUrlFormatString="Display.aspx?PhotoId={0}" HeaderText="Image" Text="View Image" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="FetchStudentsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsConnectionString %>" ProviderName="<%$ ConnectionStrings:StudentsConnectionString.ProviderName %>" SelectCommand="SELECT [StudentId], [Name], [Address] FROM [Students] ORDER BY [Name]"></asp:SqlDataSource>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </form>
    <script src="../Resources/dist/js/bootstrap.min.js"></script>
</body>
</html>
