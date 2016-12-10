<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consignees.aspx.cs" Inherits="WebApplication1.Consignees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
        <p>Consignees</p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Shippers.aspx">Shippers</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Consignees.aspx">Consignees</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Vehicles.aspx">Vehicles</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Settings.aspx">Settings</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/WeeklyOrderList.aspx">Weekly Order List</asp:HyperLink>
    </div>


    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
