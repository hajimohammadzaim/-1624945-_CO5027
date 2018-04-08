<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UploadImages.aspx.cs" Inherits="Printer.Admin.UploadImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:FileUpload ID="FileUploadImage" runat="server" />
    <br />
    <asp:Image ID="CurrentImage" runat="server" />
    <br />
    <asp:Button ID="Upload" runat="server" OnClick="Button1_Click" Text="Upload" />
</asp:Content>
