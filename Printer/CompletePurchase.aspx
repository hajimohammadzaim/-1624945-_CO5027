<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="Printer.CompletePurchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnConfirmPurchase" runat="server" Text="Confirm" OnClick="btnConfirmPurchase_Click" />

            <asp:Literal ID="litInformation" runat="server"></asp:Literal>
        </div>
    </form>
    
</body>
</html>
