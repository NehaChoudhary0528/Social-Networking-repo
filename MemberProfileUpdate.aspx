<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberProfileUpdate.aspx.cs" Inherits="alumniproject.MemberProfileUpdate" %>

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
    <div>
        <h3 align="center">Profile Updation Form</h3>
        <p align="center">
            <asp:Image ID="Image1" runat="server" Height="145px" Width="199px" />
        </p>
        <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="#fbf628" CssClass="h4">Change</asp:LinkButton>
        </p>
        <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <table align="center">
    <tr>
        <td> <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox1" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
        <tr>
        <td> <asp:Label ID="Label2" runat="server" Text="email" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox2" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
        <tr>
        <td> <asp:Label ID="Label3" runat="server" Text="Date of birth" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox3" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
         <tr>
        <td> <asp:Label ID="Label4" runat="server" Text="Qualification" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox4" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
         <tr>
        <td> <asp:Label ID="Label5" runat="server" Text="country" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox5" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
         <tr>
        <td> <asp:Label ID="Label6" runat="server" Text="Address" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox6" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
         <tr>
        <td> <asp:Label ID="Label7" runat="server" Text="Branch" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox7" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
         <tr>
        <td> <asp:Label ID="Label8" runat="server" Text="Password" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox8" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
         <tr>
        <td> <asp:Label ID="Label9" runat="server" Text="Passing year" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="TextBox9" runat="server" BackColor="LightBlue"></asp:TextBox></td>    
    </tr>
    <tr>
        <td><asp:Button ID="Button1" runat="server" Text="Update" ForeColor="#fbf628" CssClass="h4" BackColor="LightBlue"/></td>
        
      <td><asp:LinkButton ID="LinkButton3" runat="server"  PostBackUrl="~/profile.aspx" ForeColor="#fbf628" CssClass="h4">Back</asp:LinkButton></td>
    </tr>
    </table>
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
        </p>
    </form>
</body>
</html>
