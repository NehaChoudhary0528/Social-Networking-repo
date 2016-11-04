<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="pop_upcalender.ascx.cs" Inherits="alumniproject.pop_upcalender" %>
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:ImageButton ID="ImageButton1" runat="server" Height="23px" ImageUrl="~/images/calendar_icon.png" OnClick="ImageButton1_Click1" Width="19px" />

    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calender1_SelectionChanged" Visible="false"></asp:Calendar>

