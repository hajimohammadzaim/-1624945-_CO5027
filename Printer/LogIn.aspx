<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Printer.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<p>Login</p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<div class="Login">
    <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
    <br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
<br />Click this link for <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
    .<br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />


    <br />
    <br />
    <asp:Literal ID="errText" runat="server"></asp:Literal>

    </div>
</asp:Content>
