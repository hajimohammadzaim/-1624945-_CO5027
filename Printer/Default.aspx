<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Printer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    JJK Partners & Technologies
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <h1 id="head-h1">Welcome to E-online Order Printers</h1>
    <br />
    <h4 id="head-h4">"We are a group of experienced IT service and support team. 
       We set new standards in user experience & make future happen."</h4>
    <br />
    <br />
   
    
    
<a href="Product.aspx" ><img id="logo-brand" src="Images/toner-brand-logos.167141529_std.gif"/></a></p><a href="Product.aspx" ></a><div>    
<h2 id="head-h4"> JJK Partners&Technologies is first provided online order for all kinds of printer and Brunei-registered company established in november 1988 at Kg Kiarong, Gadong, B.S.B., Brunei Darussalam. In 1999, we moved to Kiulap area following the expansion of IT business to form Headquarter.</h2>
    <br />
<h2 class="H2Product">List of Product</h2>
    <div class="H2Product" > 
        <asp:Repeater  ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                <HeaderTemplate><ul></HeaderTemplate>

            <ItemTemplate>
                <li>
                    <a href="<%#Eval("ProductID", "Product.aspx?PID={0}") %>">
                        <%#Eval("productName") %>
                    </a>

                </li>

            </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>

        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624945_co5027_asg ConnectionString %>" SelectCommand="SELECT * FROM [tblproduct]">
        </asp:SqlDataSource>
        <br />
    </div>
</div>
</asp:Content>
