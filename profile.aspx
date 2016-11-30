<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="alumniproject.profile" %>

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
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
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
                    <li><a href="PhotoGallery.aspx">PHOTO GALLERY</a></li>
                    <li><a href="LaunchEvent.aspx">LAUNCH EVENT</a></li>
                    <li><a href="ShowEvents.aspx">EVENT CALENDER</a></li>
                    <li class="selected"><a href="MemberProfileUpdate.aspx">UPDATE</a></li>
                    <li><a href="Post.aspx">POSTS</a></li>
                    <li><a href="home.aspx">SIGN OUT</a></li>
                </ul>
            </nav>
        </header>

        <body background="/images/backgroundimg.jpeg">

            <form id="form1" runat="server">
                
               <%-- <br />
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" PostBackUrl="~/home.aspx" ForeColor="#fbf628" CssClass="h4">Sign Out</asp:LinkButton>
                <br />--%>
                <asp:Image ID="Image1" runat="server" Height="150px" Width="199px" BackColor="#76a9d2" />
                <br />
                <%--<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/LaunchEvent.aspx" ForeColor="#fbf628" CssClass="h4">Launch New Event</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/MemberProfileUpdate.aspx" ForeColor="#fbf628" CssClass="h4">Update My Profile</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/PhotoGallery.aspx" ForeColor="#fbf628" CssClass="h4">Photo Gallery</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/ShowEvents.aspx" ForeColor="#fbf628" CssClass="h4">Events joined</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/PhotoAlbum.aspx" OnClick="LinkButton6_Click" ForeColor="#fbf628" CssClass="h4">My Photo Album</asp:LinkButton>
                <br />--%>
                <%--<asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/Post.aspx" ForeColor="#fbf628" CssClass="h4">Show Posts</asp:LinkButton>--%>
                <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/backgroundimg.jpeg" BorderColor="Transparent" ForeColor="#fbf628" CssClass="h5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="51px" TextMode="MultiLine" Width="197px" BackColor="SteelBlue"></asp:TextBox>
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" ForeColor="#fbf628" CssClass="h4">Add Posts</asp:LinkButton>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PostId" DataSourceID="SqlDataSource1" BackImageUrl="~/images/backgroundimg.jpeg">
                        <Columns>
                            <asp:BoundField DataField="PostId" HeaderText="PostId" InsertVisible="False" ReadOnly="True" SortExpression="PostId" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="content" HeaderText="Content" SortExpression="content" />
                            <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [Post] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:SessionParameter Name="email" SessionField="userid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <br />
            </form>
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
