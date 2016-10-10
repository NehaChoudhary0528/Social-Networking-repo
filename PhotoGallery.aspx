<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="alumniproject.PhotoGallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:LinkButton ID="LinkButton3" runat="server"  PostBackUrl="~/profile.aspx" ForeColor="#fbf628" CssClass="h4">Back</asp:LinkButton>
        
        <asp:FormView ID="FormView1" AllowPaging="true" DataSourceID="SqlDataSource1" runat="server">
            <ItemTemplate>
                <table style="text-align:center;width:1000px;background-color:aliceblue" >
                    <tr>
                        
                        <td colspan="3" ><asp:Image id="image1" runat="server" ImageUrl='<%# "Handler.ashx?id="+Eval("photoid") %>' Width="800" Height="400" /></td>
                        
                    </tr>
                    <tr>
                        <td>  
                            Total Likes: 
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  PostBackUrl='<%# "~/PhotoGallery.aspx?id="+Eval("photoid") %>' ><%# alumniproject.MyCode.getLikeCounts(Eval("photoid").ToString()) %></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  PostBackUrl='<%# "~/PhotoGallery.aspx?id="+Eval("photoid") %>' ><%# alumniproject.MyCode.getLikeStatus(Eval("photoid").ToString(),Session["userid"].ToString())==false?"Like":"Unlike" %></asp:LinkButton>
                         </td>
                        <td></td>
                        
                        <td><i>uploaded by : </i> <%# Eval("email") %></td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:Panel ID="Panel1" Visible="false" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" >
                <Columns>
                    <asp:BoundField DataField="email" HeaderText="Liked By" />
                    <asp:TemplateField HeaderText="photo">
                        <ItemTemplate>
                            <asp:Image ID="image1" runat="server" ImageUrl='<%# "LikeHandler.ashx?email="+Eval("email") %>' Width="50" Height="40" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </asp:Panel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [photos]"></asp:SqlDataSource>
  
          </div>
    </form>
</body>
</html>
