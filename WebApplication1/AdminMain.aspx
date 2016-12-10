<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMain.aspx.cs" Inherits="WebApplication1.AdminMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <title><h1> Admin</title></h1>
    
</head>
<body>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Shippers.aspx">Shippers</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Consignees.aspx">Consignees</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Vehicles.aspx">Vehicles</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Settings.aspx">Settings</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/WeeklyOrderList.aspx">Weekly Order List</asp:HyperLink> 
    
    <form id="form1" runat="server">
    <div>
    
    
    </div>
    </form>
</body>
</html>
