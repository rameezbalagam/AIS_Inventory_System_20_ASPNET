<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
</head>
<body>
    Add a "user"  RB
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Login Page</asp:HyperLink>
    <form id="form1" runat="server">
        <div>
            <%--
                username: remoteuser
                pw: balagam                
                --%>

            <p>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBoxRegName" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
                <asp:TextBox ID="TextBoxRegAddress" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextBoxRegUsername" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBoxRegPassword" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Button ID="ButtonRegSubmit" runat="server" Text="Button" OnClick="ButtonRegSubmit_Click" />
            </p>

            <asp:Label ID="LabelOutputDebug" runat="server" Text="..."></asp:Label>

        </div>
    </form>
</body>
</html>
