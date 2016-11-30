<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="alumniproject.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!DOCTYPE HTML>
<head>
    <title>ALUMNI ASSOCIATION</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- modernizr enables HTML5 elements and feature detects -->
    <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
</head>

<body>
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
        <div id="site_content">
            <div class="gallery">
                <ul class="images">
                    <li class="show">
                        <img width="950" height="300" src="images/111.jpg" alt="photo_one" /></li>
                    <li>
                        <img width="950" height="300" src="images/mess.jpeg" alt="seascape" /></li>
                    <li>
                        <img width="950" height="300" src="images/222.jpg" alt="seascape" /></li>
                </ul>
            </div>
            <div id="sidebar_container">
                <div class="sidebar">
                    <h3>Latest News</h3>
                    <h4>New oragnisation Launched</h4>
                    <h5>January 1st, 2012</h5>
                    <p>For those how belive in giving back to society, to help the people in need can associate themselves to our college oragnisation "TAPAN"<br />
                        <a href="#">Read more</a></p>
                </div>
                <%-- <div class="sidebar"> 
          <h3>can share</h3> 
          <ul> 
            <li><a href="/images/"></a></li> 
            <li><a href="www.facebook.com"><img src ="/images/fb.png" /></a></li> 
            <li><a href="www.twitter.com"><img src ="/images/twitter.png"</a></li> 
            <li><a href="#">One More</a></li> 
            <li><a href="#">Last One</a></li> 
          </ul> 
        </div>--%>
            </div>
            <div class="content">
                <h1>About Us</h1>
                <p>WE are students of Mits University and created this portal so all university student which are dispersed through out the globe can connect and share thier life and experience with friends.</p>
                <p>Here you can post your photos and post comments, launch events which you want ur friend to attain or to know about.</p>
                <p>Its fun to be in this portal, soon we'll be upgrading our features.</p>
            </div>
        </div>
        <footer>
            <p>Contact us Phone number-8003221277 | <a href="http:www.mitsuniversity.co.in">MITS UNIVERSITY</a></p>
        </footer>
    </div>
    <p>&nbsp;</p>
    <!-- javascript at the bottom for fast page loading -->
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
    <script type="text/javascript" src="js/jquery.sooperfish.js"></script>
    <script type="text/javascript" src="js/image_fade.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('ul.sf-menu').sooperfish();
        });
    </script>
</body>
</html>
