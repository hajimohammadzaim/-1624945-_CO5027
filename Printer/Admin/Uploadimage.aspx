<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Uploadimage.aspx.cs" Inherits="Printer.Admin.uploadimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <p>Admin - Upload</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:FileUpload ID="FileUploadimage" runat="server" />
    <p></p>
    <asp:Button ID="UploadBtn" runat="server" Text="Upload" OnClick="UploadBtn_Click" />
    <p></p>
    <asp:Image ID="CurrentImage" runat="server" />
</asp:Content>
