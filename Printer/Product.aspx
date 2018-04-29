<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Printer.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    JJK Partners & Technologies
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">



    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <p></p>
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <p></p>
            ProductDesc:
            <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
            <p></p>
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <p></p>
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <p></p>
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

        </EditItemTemplate>
        <InsertItemTemplate>
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <p></p>
            ProductDesc:
            <asp:TextBox ID="ProductDescTextBox" runat="server" Text='<%# Bind("ProductDesc") %>' />
           <p></p>
            Quantity:
            <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
            <p></p>
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <p></p>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        
        <ItemTemplate>
            <img src="<%#Eval("ProductID", "ProductImages/{0}.jpg") %>"  alt="display product"/>
            <p></p>
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <p></p>
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <p></p>
            ProductDesc:
            <asp:Label ID="ProductDescLabel" runat="server" Text='<%# Bind("ProductDesc") %>' />
            <p></p>

            <!--Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
            <p></p>-->

            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <p></p>

        </ItemTemplate>
    </asp:FormView>
    

    Quantity:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Quantity" DataValueField="Quantity">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624945_co5027_asg ConnectionString %>" SelectCommand="SELECT [Quantity] FROM [tblproduct]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624945_co5027_asg ConnectionString %>" SelectCommand="SELECT * FROM [tblproduct] WHERE ([ProductID] = @ProductID)" OnSelecting="SqlDataSource2_Selecting">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="PID" Type="Int32" DefaultValue="0" />
        </SelectParameters>
    </asp:SqlDataSource>
     
   
    <p>
        <asp:Button ID="BtnCart" runat="server" Text="Add Cart" />
    </p>
 
</asp:Content>
