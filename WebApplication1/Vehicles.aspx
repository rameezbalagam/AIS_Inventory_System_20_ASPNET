<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Vehicles.aspx.cs" Inherits="WebApplication1.Vehicles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.css"/>
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css"/>

</head>
<body>

    <div>
        <p>Vehicles</p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Shippers.aspx">Shippers</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Consignees.aspx">Consignees</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Vehicles.aspx">Vehicles</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Settings.aspx">Settings</asp:HyperLink>| 
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/WeeklyOrderList.aspx">Weekly Order List</asp:HyperLink>
    </div>

    <form id="form1" runat="server">
        <div>

            <p>                
                <asp:Label ID="Label1" runat="server" Text="Shipper:  "></asp:Label>
                <asp:DropDownList ID="SelectShippers" runat="server" EnableViewState="True"></asp:DropDownList>
            </p>

            <p>
                <asp:Label ID="Label2" runat="server" Text="VIN:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleVin" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label3" runat="server" Text="Make:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleMake" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label4" runat="server" Text="Model:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleModel" runat="server"></asp:TextBox>
            </p>



            <p>
                <asp:Label ID="Label5" runat="server" Text="Year:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleYear" runat="server"></asp:TextBox>
            </p>



            <p>
                <asp:Label ID="Label6" runat="server" Text="Color:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleColor" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label7" runat="server" Text="Title Number:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleTitleNumber" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label8" runat="server" Text="Name On Title:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleNameOnTitle" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label10" runat="server" Text="Title State"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleTitleState" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label11" runat="server" Text="Title Receive Date"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleTitleReceiveDate" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label12" runat="server" Text="Value [$]"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleValue" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label13" runat="server" Text="Vehicle Weight [lb]"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleWeight" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label20" runat="server" Text="Vehicle Volume [CuFt]"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleVolume" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label14" runat="server" Text="Has Key?"></asp:Label>
                <asp:DropDownList ID="AddNewVehicleSelectHasKey" runat="server" ValidateRequestMode="Enabled">
                    <asp:ListItem
                        Enabled="True"
                        Selected="True"
                        Text="Yes"
                        Value="1" />
                    <asp:ListItem
                        Enabled="True"
                        Selected="False"
                        Text="No"
                        Value="0" />
                </asp:DropDownList>


            </p>

            <p>
                <asp:Label ID="Label15" runat="server" Text="Pickup Location:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehiclePickupLocation" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label21" runat="server" Text="Entry Date::"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleEntryDate" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label16" runat="server" Text="Load Fee:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleLoadFee" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label17" runat="server" Text="Storage Fee:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleStorageFee" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label18" runat="server" Text="Trucking Fee:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleTruckingFee"  runat="server"></asp:TextBox>
            </p>



            <p>
                <asp:Label ID="Label19" runat="server" Text="Other Fee:"></asp:Label>
                <asp:TextBox ID="TextBoxAddNewVehicleOtherFee" runat="server"></asp:TextBox>
            </p>




            <p>
                <asp:Button ID="ButtonAddNewVehicle" runat="server" Text="Add New Vehicle" OnClick="ButtonAddNewVehicle_Click" />
            </p>

















        </div>
    </form>
</body>
</html>
