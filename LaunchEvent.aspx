<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LaunchEvent.aspx.cs" Inherits="alumniproject.LaunchEvent" %>
<%@ Register Src="~/UserControls/pop_upcalender.ascx" TagPrefix="usr" TagName="mydate"  %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
</head>
<body background="images/bg.jpeg" widhth="5000">
    <form id="form1" runat="server">
    <div>
         <h3 align="center">EVENT LAUNCH</h3>
    <table border= "0" align="center"  > 
   <tr>
       <td> <asp:Label ID="Label1" runat="server" Text="Event name" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="txtename" runat="server" Height="22px" BackColor="LightBlue"></asp:TextBox></td>
   </tr>
    <tr>
       <td> <asp:Label ID="Label2" runat="server" Text="Event date" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
       <td>
           <usr:mydate ID="edate1" runat="server" />
       </td>
   </tr>
   <tr>
       <td><asp:Label ID="Label3" runat="server" Text="Time" ForeColor="#fbf628" CssClass="h4"></asp:Label> </td>
       <td><asp:TextBox ID="txtTime" runat="server" BackColor="LightBlue"></asp:TextBox></td>
   </tr>
    <tr>
       <td> <asp:Label ID="Label5" runat="server" Text="Event Description" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="txtDesc" runat="server" Height="68px" TextMode="MultiLine" Width="184px" BackColor="LightBlue"></asp:TextBox></td>
   </tr>
         <tr>
       <td> <asp:Label ID="Label4" runat="server" Text="Contact number" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="TxtContact" runat="server" BackColor="LightBlue"></asp:TextBox></td>
   </tr>
   <tr>
       <td><asp:Label ID="Label6" runat="server" Text="Venue" ForeColor="#fbf628" CssClass="h4"></asp:Label></td>
       <td><asp:TextBox ID="txtVenue" runat="server" BackColor="LightBlue"></asp:TextBox></td>
   </tr>
        <tr>
            <td><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Submit" ForeColor="#fbf628" BackColor="LightBlue" CssClass="h4"/></td>
            <td><asp:LinkButton ID="LinkButton1" runat="server"  PostBackUrl="~/profile.aspx" ForeColor="#fbf628" CssClass="h4">Back</asp:LinkButton></td>
        </tr>

    </table>
    </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <%--  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />--%>
&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
