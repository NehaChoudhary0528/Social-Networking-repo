<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LaunchEvent.aspx.cs" Inherits="alumniproject.LaunchEvent" %>
<%@ Register Src="~/UserControls/pop_upcalender.ascx" TagPrefix="usr" TagName="mydate"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <title>ALUMNI ASSOCIATION</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- modernizr enables HTML5 elements and feature detects -->
    <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    <%--<script src="js/bootstrap.min.js"></script>--%>
    <%--<script  type="text/javascript" src="js/bootstrap.js"></script>--%>
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link rel="new" type="text/html" href="css/bootstrap-theme.min.css" />
</head>
<body>
    <form id="form1" runat="server">
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
                    <li><a href="PhotoGallery.aspx">PHOTO GALLERY</a></li>
                    <li><a href="LaunchEvent.aspx">LAUNCH EVENT</a></li>
                    <li><a href="ShowEvents.aspx">EVENT CALENDER</a></li>
                    <li class="selected"><a href="MemberProfileUpdate.aspx">UPDATE</a></li>
                    <li><a href="Post.aspx">POSTS</a></li>
                    <li><a href="home.aspx">SIGN OUT</a></li>
                </ul>
            </nav>
        </header>
    <div align="center">
         
    <table align="center"> 
   <tr>
       <td> <asp:Label ID="Label1" runat="server" Text="Event name" CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="txtename" runat="server" Height="22px"></asp:TextBox></td>
   </tr>
    <tr>
       <td> <asp:Label ID="Label2" runat="server" Text="Event date" CssClass="h4"></asp:Label></td>
       <td>
           <usr:mydate ID="edate1" runat="server" />
       </td>
   </tr>
   <tr>
       <td><asp:Label ID="Label3" runat="server" Text="Time"  CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="txtTime" runat="server"></asp:TextBox></td>
   </tr>
    <tr>
       <td> <asp:Label ID="Label5" runat="server" Text="Event Description"  CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="txtDesc" runat="server" Height="68px" TextMode="MultiLine" Width="184px"></asp:TextBox></td>
   </tr>
         <tr>
       <td> <asp:Label ID="Label4" runat="server" Text="Contact number" CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="TxtContact" runat="server" ></asp:TextBox></td>
   </tr>
   <tr>
       <td><asp:Label ID="Label6" runat="server" Text="Venue"  CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="txtVenue" runat="server" ></asp:TextBox></td>
   </tr>
        <tr>
            <td><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn-default" Font-Size="Large"/></td>
            <td><asp:LinkButton ID="LinkButton1" runat="server"  PostBackUrl="~/profile.aspx" CssClass="h4">Back</asp:LinkButton></td>
        </tr>

    </table>
    </div>
    </form>
     <footer>
            <p>Contact us Phone number-8003221277 | <a href="http:www.mitsuniversity.co.in">MITS UNIVERSITY</a></p>
        </footer>
        <p>&nbsp;</p>
        <!-- javascript at the bottom for fast page loading -->
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
