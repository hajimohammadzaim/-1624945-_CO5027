<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Printer.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
Register
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <p>Register</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="Login">
    <asp:Label ID="Username" runat="server" Text="Name"></asp:Label>
        <br />
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
     <br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <br />

    <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
    <br />
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
     <br />
     <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    <br />
    <br />
    <asp:Button ID="BtnLogin1" runat="server" Text="Submit" OnClick="BtnLogin1_Click" />
    <br />
    <br />
 </div>
</asp:Content>
