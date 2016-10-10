<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyCal.ascx.cs" Inherits="alumniproject.UserControls.MyCal" %>
<asp:TextBox ID="TextBox1" runat="server" Width="73px" BackColor="LightBlue"></asp:TextBox>
<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
</asp:DropDownList>
<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>