<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Printer.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <p>Register</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <p></p>
    <div class="Login">
    <asp:Label ID="Username" runat="server" Text="Name"></asp:Label>
        <p></p>
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
  <p></p>
    <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
     <p></p>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <p></p>
    <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
    <p></p>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <p></p>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <p></p>
    <asp:Button ID="BtnLogin1" runat="server" Text="Submit" OnClick="BtnLogin1_Click" />
    <p></p>
 </div>
</asp:Content>
