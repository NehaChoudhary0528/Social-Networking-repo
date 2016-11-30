<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentSignUp.aspx.cs" Inherits="alumniproject.StudentSignUp" %>

<%@ Register TagPrefix="usr" TagName="MyCal" Src="~/UserControls/MyCal.ascx" %>
<%@ Register TagPrefix="usr" TagName="pop_upcalender" Src="~/UserControls/pop_upcalender.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>ALUMNI ASSOCIATION</title>
    <meta name="description" content="website description" />
    <meta name="keywords" content="website keywords, website keywords" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <script type="text/javascript" src="js/modernizr-1.5.min.js"></script>
    <%--<script src="js/bootstrap.min.js"></script>--%>
    <%--<script  type="text/javascript" src="js/bootstrap.js"></script>--%>
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link rel="new" type="text/html" href="css/bootstrap-theme.min.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1"/> 
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          $("#datepicker").datepicker();
      });
  </script>
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
                    <li><a href="home.aspx">HOME</a></li>
                    <li><a href="login.aspx">PHOTO GALLERY</a></li>
                    <li><a href="login.aspx">EVENT CALENDER</a></li>
                    <li class="selected"><a href="StudentSignUp.aspx">SIGN UP</a></li>
                    <li><a href="login.aspx">POSTS</a></li>
                    <li><a href="login.aspx">LOGIN</a></li>
                </ul>
            </nav>
        </header>
        <div id="sidebar_container">
                <div class="sidebar">
                    <div style="color:bisque";>
                    <h3>Note:</h3>
                    <h4>User have to Register and then LOGIN to Proceed</h4>
                 </div>
                </div>
            </div>

        
            <div align="center">
            <table align="center">
               
               <tr>
                      <td><asp:Label ID="Label1" runat="server" Text="Name" CssClass="h4"></asp:Label></td>
                       <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>

                       </td>
                   </tr>
                    
                      <tr>
                          <td>  <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="h4"></asp:Label></td>
                       <td> <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Gender" />

                       </td>
                          </tr>
                   
                       <%-- <tr>
                            <td><asp:Label ID="Label3" runat="server" Text="Date of birth" CssClass="h4"></asp:Label></td>
                    
                    <%--    <usr:MyCal ID="mycal1" runat="server" />--%>
                          <%--<td><asp:TextBox ID="datepicker" runat="server"></asp:TextBox></td>--%>
                   
                    
            
            <tr>
                      <td><asp:Label ID="Label6" runat="server" Text="Contact no." CssClass="h4"></asp:Label></td>
                    
                      <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                </tr>

                <tr>
                    
                      <td>  <asp:Label ID="Label7" runat="server" Text="Branch" CssClass="h4"></asp:Label></td>
                    
                       <td><asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-toggle">
                            <asp:ListItem>computer science</asp:ListItem>
                            <asp:ListItem>Information technology</asp:ListItem>
                            <asp:ListItem>Electronics</asp:ListItem>
                            <asp:ListItem>Civil engineering</asp:ListItem>
                            <asp:ListItem>Electrical engineering</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                    <tr>
                        <td><asp:Label ID="Label5" runat="server" Text="Qualification" CssClass="h4"></asp:Label></td>
                    
                      <td> <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-toggle">
                            <asp:ListItem> B.Tech</asp:ListItem>
                            <asp:ListItem>M.Tech</asp:ListItem>
                            <asp:ListItem>M.B.A</asp:ListItem>
                            <asp:ListItem>M.S</asp:ListItem>
                            <asp:ListItem>Phd.</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
            
              <%-- <tr>
                        <td><asp:Label ID="Label8" runat="server" Text="Passing year" CssClass="h4"></asp:Label></td>
                    
                       <td><usr:pop_upcalender ID="pop_upcalender1" runat="server"></usr:pop_upcalender></td>
                   </tr>
            --%>
                    
            <tr>
                     <td><asp:Label ID="Label11" runat="server" Text="Address" CssClass="h4"></asp:Label></td>
                    
                      <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ErrorMessage="Required Field" ControlToValidate="TextBox8"></asp:RequiredFieldValidator></td>

                
                </tr>
            <tr>
                
               
                    <td>    <asp:Label ID="Label10" runat="server" Text="Country" CssClass="h4"></asp:Label></td>
                    
                       <td><asp:DropDownList ID="DropDownList3" runat="server" CssClass="dropdown-toggle">
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem>New Zealand</asp:ListItem>
                            <asp:ListItem>Mexico</asp:ListItem>
                            <asp:ListItem>Sweden</asp:ListItem>
                            <asp:ListItem>Russia</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                    
                   <tr>
                        <td><asp:Label ID="Label2" runat="server" Text="Email id" CssClass="h4"></asp:Label></td>
                    
                       <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                           </tr>
                
                    <tr>
                       <td><asp:Label ID="Label12" runat="server" Text="Password" CssClass="h4"></asp:Label></td>
                    
                       <td><asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
                            </tr>
            </table>
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" CssClass="btn-default"  Font-Size="Large" align="center"/>
                

                
           
                    <%--<td><asp:Button ID="Button2" runat="server" Text="Login"  PostBackUrl="~/login.aspx" CssClass="btn-default" Font-Size="Large"/></td>--%>
           
           
        </div>
        </div>
            </form>
    
        <footer>
            <p>Contact us Phone number-8003221277 | <a href="http:www.mitsuniversity.co.in">MITS UNIVERSITY</a></p>
        </footer>
        <p>&nbsp;</p>
        <!-- javascript at the bottom for fast page loading -->
        <script type="text/javascript" src="js/jquery.js"></script>
       <%-- <script type="text/javascript" src="js/jquery.easing-sooper.js"></script>
        <script type="text/javascript" src="js/jquery.sooperfish.js"></script>--%>
        <%--<script type="text/javascript" src="js/image_fade.js"></script>--%>
        <%--<script type="text/javascript">
            $(document).ready(function () {
                $('ul.sf-menu').sooperfish();
            });
        </script>--%>
    
        
</body>
</html>
