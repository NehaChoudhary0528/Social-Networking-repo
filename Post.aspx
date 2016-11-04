<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Post.aspx.cs" Inherits="alumniproject.Post" %>

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
    <asp:datalist ID="Datalist1" runat="server" DataKeyField="PostId" DataSourceID="SqlDataSource1" style="margin-right: 725px" Width="914px" OnItemCreated="Datalist1_ItemCreated">
        <ItemTemplate>
           <div style="border:solid 1px black;background-color:silver" >
             PostId:<asp:Label ID="PostIdLabel" runat="server" Text='<%# Eval("PostId") %>' ForeColor="#fbf628" CssClass="h4" />
            <br />
            Posted By:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' ForeColor="#fbf628" CssClass="h4"/>
            <br />
            Post Contents:
            <div style="font-size:14pt;color:brown;"><asp:Label ID="contentLabel" runat="server" Text='<%# Eval("content") %>' ForeColor="#fbf628" CssClass="h4"/></div>
            Posted Date:
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' /><br />
               <asp:TextBox ID="TextBox1" OnTextChanged="TextBox1_TextChanged" TextMode="MultiLine" runat="server">

               </asp:TextBox><asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click1" PostBackUrl='<%# "~/Post.aspx?postid="+Eval("postid") %>'  runat="server">reply</asp:LinkButton>
               
        </div>
            
            <div style="visibility:visible"  ><input type="button" onclick="this.parentNode.childNodes[1].style.visibility = 'visible'; this.parentNode.childNodes[1].style.height='100%'" value="Show/Hide Comments" /><div style="visibility:hidden;height:0px">
                <asp:DataList ID="DataList2" DataSourceId="SqlDataSource2" runat="server">
                <ItemTemplate>
                    <div style="border:dotted 1px gray">
                        <asp:Label runat="server" ID="label1" Text='<%# Eval("comment") %>' ></asp:Label><br />
                        <i>Commented By: <asp:Label runat="server" ID="label2" Text='<%# Eval("email") %>' ></asp:Label> on Date
                        <asp:Label runat="server" ID="label3" Text='<%# Eval("date") %>' ></asp:Label></i>
                    </div>
                </ItemTemplate>
                </asp:DataList>
                    </div>
            </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand='<%# "SELECT * FROM [Post_Comments] where postid="+Eval("postid")  %>' ></asp:SqlDataSource>
        </ItemTemplate>
       
    </asp:datalist>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [Post]"></asp:SqlDataSource>
    </div>
        
    </form>
</body>
</html>
