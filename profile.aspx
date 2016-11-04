<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="alumniproject.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <link href="css/bootstrap.css" rel="stylesheet"/>
</head>
<body background="/images/bg.jpeg">

    <form id="form1" runat="server">
    <div>
  <h2 align="center">Profile</h2>
       
    </div>
         <br />
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" PostBackUrl="~/home.aspx" ForeColor="#fbf628" CssClass="h4">Sign Out</asp:LinkButton>
        <br />
        <asp:Image ID="Image1" runat="server" Height="150px" Width="199px" BackColor="#76a9d2"/>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/LaunchEvent.aspx" ForeColor="#fbf628" CssClass="h4">Launch New Event</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/MemberProfileUpdate.aspx" ForeColor="#fbf628" CssClass="h4" >Update My Profile</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/PhotoGallery.aspx" ForeColor="#fbf628" CssClass="h4">Photo Gallery</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/ShowEvents.aspx" ForeColor="#fbf628" CssClass="h4">Events joined</asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/PhotoAlbum.aspx" OnClick="LinkButton6_Click" ForeColor="#fbf628" CssClass="h4">My Photo Album</asp:LinkButton>
         <br />
        <asp:LinkButton ID="LinkButton8" runat="server" PostBackUrl="~/Post.aspx" ForeColor="#fbf628" CssClass="h4">Show Posts</asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/images/bg.jpeg" BorderColor="Transparent" ForeColor="#fbf628" CssClass="h5">
            <asp:TextBox ID="TextBox1" runat="server" Height="51px" TextMode="MultiLine" Width="197px"></asp:TextBox>
            <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" ForeColor="#fbf628" CssClass="h4">Add Posts</asp:LinkButton>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PostId" DataSourceID="SqlDataSource1" BackImageUrl="~/images/bg.jpeg">
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
</body>
</html>
