<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Printer.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    JJK Partners & Technologies
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">

  
 <div id="feedback">  
  <h2>Feedback Form</h2>

 <div>
   <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
    <br />
   <asp:TextBox ID="txtSubject" runat="server" Height="21px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="SbjctValidator" runat="server" ErrorMessage="invalid Subject" ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
     <br />

    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
     <br />
   <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="EmailValidator" runat="server" ErrorMessage="invalid Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />

    <asp:Label ID="lblbody" runat="server" Text="Body"></asp:Label>
    <br />
     <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="BodyValidator" runat="server" ErrorMessage="invalid Body" ControlToValidate="txtBody" ForeColor="Red"></asp:RequiredFieldValidator>
     <br>
    <div>
        <br />
     </div>
     <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send email" />
     <br />
     <br />
      <asp:Literal ID="litResult" runat="server"></asp:Literal>
 </div>  
</div>

<div id="address1">
        <h2 >Address:</h2>
        <p>Unit 20 and 60, BT Hj Uthman Complex</p>
        <p>Jalan Komersial Jaya Setia</p>
        <p>Kg. Jaya Setia, Berakas “A”</p>
        <p>Bandar Seri Begawan BB2713</p>
        <p>Negara Brunei Darussalam</p>
    </div>
    
 <div id="map">
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 4.93951, lng: 114.937435 },
                zoom: 17
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfPuM4wV5Mlu-rwTprqRtqvqIwGVW_Hhk&callback=initMap"
    async defer></script>
</div>

</asp:Content>

