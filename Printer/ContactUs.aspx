<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Printer.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    JJK Partners & Technologies
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

  
 <div class="feedback">  
  <h2 id="h4">Feedback Form</h2>
     <p></p>
   <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
    <p></p>
   <asp:TextBox ID="txtSubject" runat="server" Height="21px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="SbjctValidator" runat="server" ErrorMessage="Please fill up the blank" ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
     <p></p>
    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
     <p></p>
   <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="Please fill up the blank" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
   <p></p>
   <asp:Label ID="lblbody" runat="server" Text="Body"></asp:Label>
    <p></p>
     <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
     <asp:RequiredFieldValidator ID="BodyValidator" runat="server" ErrorMessage="Please fill up the blank" ControlToValidate="txtBody" ForeColor="Red"></asp:RequiredFieldValidator>
    <p></p>
   <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send email" />
     <p></p>
     <p></p>
      <asp:Literal ID="litResult" runat="server"></asp:Literal>
 
</div>

<div id="address1">
        <h2 >Address:</h2>
        <p>Unit 20 and 60, BT Hj Uthman Complex</p>
        <p>Jalan Komersial Jaya Setia</p>
        <p>Kg. Jaya Setia, Berakas “A”</p>
        <p>Bandar Seri Begawan BB2713</p>
        <p>Negara Brunei Darussalam</p>
</div>
 <p></p>
 <div id="map">
    <script src="JavaScript.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfPuM4wV5Mlu-rwTprqRtqvqIwGVW_Hhk&callback=initMap"
    async defer></script>
</div>

</asp:Content>

