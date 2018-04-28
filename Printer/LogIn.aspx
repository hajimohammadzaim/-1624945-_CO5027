<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Printer.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<p>JJK Partners & Technologies</p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h1 class="H2Product">Log In</h1> 
    <div class="Login">
    <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>
    <p></p>
    <p></p>
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <p></p>
    <p></p>
    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
    <p></p>
    <p></p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <p></p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    <p></p>
    <asp:Literal ID="errText" runat="server"></asp:Literal>
</div>
        
    <h1 class="H2Product">Register</h1>
        <div class="Login">
            <asp:Label ID="Username0" runat="server" Text="Name"></asp:Label>
            <p>
            </p>
            <asp:TextBox ID="txtUserName0" runat="server"></asp:TextBox>
            <p>
            </p>
            <asp:Label ID="email" runat="server" Text="Email"></asp:Label>
            <p>
            </p>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <p>
            </p>
            <asp:Label ID="lblPass" runat="server" Text="Password"></asp:Label>
            <p>
            </p>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <p>
            </p>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <p>
            </p>
            <asp:Button ID="BtnLogin1" runat="server" OnClick="BtnLogin1_Click" Text="Submit" />
            <p>
            </p>
        </div>

    
</asp:Content>
