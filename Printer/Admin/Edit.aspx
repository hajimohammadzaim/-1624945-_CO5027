<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Printer.Admin.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:FormView ID="FormView1" runat="server" OnPageIndexChanging="FormView1_PageIndexChanging">
    </asp:FormView>
</asp:Content>
