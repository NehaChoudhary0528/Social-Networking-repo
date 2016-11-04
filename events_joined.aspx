<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="events_joined.aspx.cs" Inherits="alumniproject.events_joined" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconstr %>" SelectCommand="SELECT * FROM [event],[Event_Joined] where Id=Eid and email=@email">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="userid" />
        </SelectParameters>
        
    </asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" DataKeyField="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div style="background-color:sienna;padding:10px;color:white;margin:10px;border:solid 1px black">
                <asp:Image ID="image1" runat="server" Width="100px" ImageUrl='<%# "LikeHandler.ashx?email="+Eval("launchedby") %>' />
                        <br />
                <div style="font-size:14pt;color:yellow"><asp:Label ID="enameLabel" runat="server" Text='<%# Eval("ename") %>' /></div>
                        Launched By: 
                <asp:Label ID="launchedbyLabel" runat="server" Text='<%# Eval("launchedby") %>' />
                <br />
                
                
                <br />
                Event Date:
                <asp:Label ID="edateLabel" runat="server" Text='<%# Eval("edate") %>' />
                <br />
                About Event:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                <br />
                Contact:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                <br />
                
                Event Venue:
                <asp:Label ID="venueLabel" runat="server" Text='<%# Eval("venue") %>' />
                
                Time:
                <asp:Label ID="etimeLabel" runat="server" Text='<%# Eval("etime") %>' />
                <br />
                   
                    
                    </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
