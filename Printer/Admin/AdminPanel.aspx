<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Printer.Admin.AdminPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <p>
        Admin Panel</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
   <div id="head-h1">Welcome to Main Page</div> 
    <br />
    <br />
    <asp:Button ID="AddBtn" runat="server" OnClick="Button2_Click" Text="Add" />
    <br />
    <br />
    <asp:Button ID="ListBtn" runat="server" OnClick="Button4_Click" Text="List" />
    <br />
    <br />
    <asp:Button ID="ExitBtn" runat="server" OnClick="Button6_Click" Text="Exit" />
    <br />
    <br />
</asp:Content>
