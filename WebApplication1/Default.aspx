<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default Page</title>
</head>
<body>
    <p>This is the Default(lOGIN) page.. RB </p>
    
        
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Registration Page</asp:HyperLink>

        <form id="FormLogin" runat="server">
            <div>
                <p>Enter Username:</p>
                <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                <p>Password:</p>
                <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                <asp:Button ID="ButtonLoginSubmit" runat="server" Text="Submit" OnClientClick="ButtonLoginSubmit_Click" OnClick="ButtonLoginSubmit_Click" />

            </div>
        </form>
</body>
</html>
