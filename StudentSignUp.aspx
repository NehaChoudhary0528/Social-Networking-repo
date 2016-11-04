<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentSignUp.aspx.cs" Inherits="alumniproject.StudentSignUp" %>
<%@ Register TagPrefix="usr" TagName="MyCal" Src="~/UserControls/MyCal.ascx" %>
<%@Register TagPrefix="usr" TagName="pop_upcalender" Src="~/UserControls/pop_upcalender.ascx" %> >

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
</head>
    
<body background= "/images/bg.jpeg">
    <form id="form1" runat="server">
  
        
          <div ForeColor="#fbf628">
       
            <h3 align="center"> Sign up form </h3>
        </div>
        
        <table align="center">
       <tr> 
           <td><asp:Label ID="Label1" runat="server" Text="Name" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
           <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
       </tr>
        <tr>
        <td><asp:Label ID="Label2" runat="server" Text="Email id" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
        <td><asp:Label ID="Label12" runat="server" Text="Password" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
       <td> <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox></td>
       <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="RequiredField"></asp:RequiredFieldValidator></td>
       </tr>
            
        <tr>
        <td><asp:Label ID="Label4" runat="server" Text="Gender" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
        <td><asp:RadioButton ID="RadioButton1" runat="server" Text="Male"  ForeColor="#fbf628" CssClass="h4"/>
&nbsp;<asp:RadioButton ID="RadioBonutton2" runat="server" Text="Female"  ForeColor="#fbf628" CssClass="h4" />
&nbsp;</td>
            </tr>
            
            <tr>
           <td> <asp:Label ID="Label3" runat="server" Text="Date of birth" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
          <td> <usr:MyCal id="mycal1" runat="server" ></usr:MyCal></td>
            </tr>
            
           <tr> 
           <td> <asp:Label ID="Label6" runat="server" Text="Contact no." ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
            <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
        
        <tr>
           <td><asp:Label ID="Label7" runat="server" Text="Branch" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
            <td>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown-toggle">
                <asp:ListItem>computer science</asp:ListItem>
                <asp:ListItem>Information technology</asp:ListItem>
                <asp:ListItem>Electronics</asp:ListItem>
                <asp:ListItem>Civil engineering</asp:ListItem>
                <asp:ListItem>Electrical engineering</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
           <td><asp:Label ID="Label5" runat="server" Text="Qualification" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
          <td>  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown-toggle">
                <asp:ListItem> B.Tech</asp:ListItem>
                <asp:ListItem>M.Tech</asp:ListItem>
                <asp:ListItem>M.B.A</asp:ListItem>
                <asp:ListItem>M.S</asp:ListItem>
                <asp:ListItem>Phd.</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        
        <tr>  
          <td><asp:Label ID="Label8" runat="server" Text="Passing year" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
          <td> <usr:pop_upcalender id="pop_upcalender1" runat="server" ></usr:pop_upcalender></td>
        </tr>
        <br />
        <tr>
        <td><asp:Label ID="Label11" runat="server" Text="Address" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
        <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        </tr>
        
        <tr>
        <td><asp:Label ID="Label10" runat="server" Text="Country" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
        <td>
            <asp:DropDownList ID="DropDownList3" runat="server"  CssClass="dropdown-toggle">
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>USA</asp:ListItem>
                <asp:ListItem>UK</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>New Zealand</asp:ListItem>
                <asp:ListItem>Mexico</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>
       <tr>     
       <td> <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" ForeColor="#fbf628" CssClass="h4" BackColor="LightBlue" />
        </table>
    
    
    
    </form>
</body>
</html>
