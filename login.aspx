 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="alumniproject.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
  <title>ALUMNI ASSOCIATION</title> 
  <meta name="description" content="website description" /> 
  <meta name="keywords" content="website keywords, website keywords" /> 
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
  <link rel="stylesheet" type="text/css" href="css/style.css" /> 
  <link rel="new" type="text/html" href="css/bootstrap-theme.min.css" />
   
  <!-- modernizr enables HTML5 elements and feature detects --> 
  <script type="text/javascript" src="js/modernizr-1.5.min.js"></script> 
     <%--<script src="js/bootstrap.min.js"></script>--%>
    <%--<script src="js/bootstrap.js"></script>--%>
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
</head> 
 
<body background= "/images/bg.jpeg">
  <div id="main"> 
    <header> 
      <div id="logo"> 
        <div id="logo_text"> 
          <!-- class="logo_colour", allows you to change the colour of the text --> 
          <h1><a href="index.html">ALUMNI<span class="logo_colour">ASSOCIATION</span></a></h1> 
          <h2>EXCEL.TRANSFORM.SUSTAIN</h2> 
        </div> 
      </div> 
      <nav> 
        <ul class="sf-menu" id="nav"> 
          <li><a href="home.aspx">HOME</a></li> 
          <li><a href="login.aspx">PHOTO GALLERY</a></li> 
          <li><a href="login.aspx">EVENT CALENDER</a></li> 
          <li class="selected"><a href="StudentSignUp.aspx">SIGN UP</a></li> 
          <li><a href="login.aspx">POSTS</a></li>
          <li><a href="login.aspx">LOGIN</a></li> 
        </ul>
      </nav> 
    </header>
  
    <form id="form1" runat="server">
        <br />
    <div align="center">
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" LabelStyle-CssClass="h4" TitleTextStyle-CssClass="h4" BackColor="#000000" LoginButtonStyle-CssClass="btn-default" UserNameLabelText="Email:">
<CheckBoxStyle HorizontalAlign="Justify"></CheckBoxStyle>

<%--<LabelStyle CssClass="h4"></LabelStyle>

<LoginButtonStyle CssClass="btn-default"></LoginButtonStyle>
            <TitleTextStyle CssClass="h4" />--%>
        </asp:Login> 
         </div>   
    </form>
      <div id="site_content">
      <footer> 
      <p>Contact us Phone number-02041344444 | <a href="http:www.mitsuniversity.co.in">MITS UNIVERSITY</a></p>

    </footer>
          </div> 
      </div>
     <p>&nbsp;</p> 
      <script type="text/javascript" src="js/jquery.js"></script> 
  <script type="text/javascript" src="js/jquery.easing-sooper.js"></script> 
  <script type="text/javascript" src="js/jquery.sooperfish.js"></script> 
  <%--<script type="text/javascript" src="js/image_fade.js"></script>--%> 
  <script type="text/javascript">
      $(document).ready(function () {
          $('ul.sf-menu').sooperfish();
      });
  </script> 
    </body>
</html>
