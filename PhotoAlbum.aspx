<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoAlbum.aspx.cs" Inherits="alumniproject.PhotoAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add Photo</asp:LinkButton>

        <asp:DataList ID="DataList1" runat="server" DataKeyField="photoid" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <ItemTemplate>
                <asp:Image ID="Image1" ImageUrl='<%# "~/Handler.ashx?id="+Eval("photoid") %>' runat="server" Width="300" Height="250"/>
                <br /> 
                uploaddate:
                <asp:Label ID="uploaddateLabel" runat="server" Text='<%# Eval("uploaddate") %>' />
                
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [photos] WHERE ([email] = @email)">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="userid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
