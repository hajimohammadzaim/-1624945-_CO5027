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

  Name:<br>
  <input type="text" name="name" value="">
  <br>
  E-mail:<br>
  <input type="text" name="Email" value="">
  <br>
   Contact No:<br>
  <input type="text" name="Contact" value="">
  <br>
  Message:<br>
  <input type="text" name="message" value="" style="width: 472px; height: 136px">
  <br>

<input type="submit" value="Submit">
</div>

<div id="address1">
        <h2 >Address:</h2>
        <p>Unit 20 and 60, BT Hj Uthman Complex</p>
        <p>Jalan Komersial Jaya Setia</p>
        <p>Kg. Jaya Setia, Berakas “A”</p>
        <p>Bandar Seri Begawan BB2713</p>
        <p>Negara Brunei Darussalam</p>
    </div>
    <div id="location">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d9185.132415170678!2d114.9345503558653!3d4.93397470187197!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3222f5a56278e879%3A0x251de2d6ea41033a!2sTimes+Square+Shopping+Complex!5e0!3m2!1sen!2sbn!4v1519625511351"></iframe>
    </div>

</asp:Content>
