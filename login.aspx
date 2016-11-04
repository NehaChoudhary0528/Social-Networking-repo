<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="alumniproject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
</head>
<body background="/images/bg.jpeg">
  
    <form id="form1" runat="server" align="center">
          <blockquote></blockquote>
          <blockquote></blockquote>
        <div align="center">
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" ForeColor="#fbf628" CssClass="h4" CheckBoxStyle-HorizontalAlign="Justify">
        </asp:Login>
            </div>
    </form>
    </body>
</html>
