<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="students.Pages.Display" %>

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
                <asp:Label runat="server" ID="Message" />
                <asp:Image runat="server" ID="UserImage" />
            </div>
            <div class="col-lg-6">
                
            </div>

        </div>
    </div>
    </form>
    <script src="../Resources/dist/js/bootstrap.min.js"></script>
</body>
</html>
