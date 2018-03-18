<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Printer.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <p>Register</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div id="LogIn">
    <asp:Label ID="Login" runat="server" Text="Login"></asp:Label>
    <br />
    <asp:TextBox ID="LoginTextBox" runat="server"></asp:TextBox>
    <br />

    <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="PassTextBox" runat="server"></asp:TextBox>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
    <asp:Button ID="BtnLogin" runat="server" Text="Submit" OnClick="BtnLogin_Click" />
    <br />
 </div>
</asp:Content>
