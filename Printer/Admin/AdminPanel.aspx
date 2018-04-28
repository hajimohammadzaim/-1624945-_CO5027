<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Printer.Admin.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin Panel
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <p>Admin Panel</p>

</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
   <div id="head-h">Welcome to Main Page 
    <p></p>
    <p></p>
    <asp:Button  ID="AddBtn" runat="server" OnClick="Button2_Click" Text="Add" />
    <p></p>
    <p></p>
   
    <asp:Button ID="ListBtn" runat="server" OnClick="Button4_Click" Text="List" />
    <p></p>
    <p></p>
    <asp:Button ID="ExitBtn" runat="server" OnClick="Button6_Click" Text="Exit" />
    <p></p>
    <p></p>
   </div>
</asp:Content>
