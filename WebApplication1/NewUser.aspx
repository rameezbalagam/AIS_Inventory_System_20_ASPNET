<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="WebApplication1.AddNewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>




<head runat="server">




    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Shipper:  "></asp:Label>                
                <asp:DropDownList ID="SelectShippers" runat="server"  EnableViewState="True"></asp:DropDownList>
            </p>


            <p>
                <asp:Label ID="Label2" runat="server" Text="username:"></asp:Label>
                <asp:TextBox ID="TextBoxNewUserUsername" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label3" runat="server" Text="lastname:  "></asp:Label>
                <asp:TextBox ID="TextBoxNewUserLastname" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label4" runat="server" Text="firstname:"></asp:Label>
                <asp:TextBox ID="TextBoxNewUserFirstname" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label5" runat="server" Text="email:  "></asp:Label>
                <asp:TextBox ID="TextBoxNewUserEmail" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label6" runat="server" Text="password"></asp:Label>
                <asp:TextBox ID="TextBoxNewUserPassword" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label12" runat="server" Text="Active:"></asp:Label>
                <asp:CheckBox ID="CheckBoxNewUserActive" runat="server" />
            </p>

            <p>
                <asp:Button ID="ButtonAddNewUser" runat="server" Text="Add New User" OnClick="ButtonAddNewUser_Click" />
            </p>

        </div>
    </form>
</body>
</html>
