<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shipment.aspx.cs" Inherits="WebApplication1.Shipment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


    <title></title>
</head>
<body>
    <div>
        <p>Shipment</p>
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
                <asp:Label ID="Label2" runat="server" Text="Booking #"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentBookingNumber" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label3" runat="server" Text="Container Number"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentContainerNum" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label4" runat="server" Text="Seal Number"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentSealNum" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label5" runat="server" Text="Date In:"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentDateIn" runat="server"></asp:TextBox>
            </p>


            <p>
                <asp:Label ID="Label6" runat="server" Text="Date Out:"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentDateOut" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label7" runat="server" Text="Vessel Name"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentVesselName" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label8" runat="server" Text="ETA"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentETA" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label9" runat="server" Text="Port Of Origin"></asp:Label>
                <asp:TextBox ID="TextBoxPortOfOrigin" runat="server"></asp:TextBox>
            </p>

            <p>
                <asp:Label ID="Label10" runat="server" Text="Port Of Destination"></asp:Label>
                <asp:TextBox ID="TextBoxPortOfDestination" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label11" runat="server" Text="Seal Date"></asp:Label>
                <asp:TextBox ID="TextBoxSealDate" runat="server"></asp:TextBox>
            </p>

            <label for="addNewShipmentLoaded" class="col-sm-3 col-form-label">Loaded?</label>
            <div class="col-sm-8">
                <asp:DropDownList  runat="server" CssClass="form-control" id="addNewShipmentLoaded">
                    <asp:ListItem value="1">Yes</asp:ListItem>
                    <asp:ListItem value="0">No</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="form-group row ">
                <label for="addNewShipmentReturned" class="col-sm-3 col-form-label">Returned?</label>
                <div class="col-sm-8">
                    <asp:DropDownList  runat="server" CssClass="form-control" id="addNewShipmentReturned">
                        <asp:ListItem value="1">Yes</asp:ListItem>
                        <asp:ListItem value="0">No</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>


            <div class="form-group row ">
                <label for="addNewShipmentInvoiced" class="col-sm-3 col-form-label">Invoiced?</label>
                <div class="col-sm-8">
                    <asp:DropDownList  runat="server" CssClass="form-control" id="addNewShipmentInvoiced">
                        <asp:ListItem value="1">Yes</asp:ListItem>
                        <asp:ListItem value="0">No</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group row ">
                <label for="addNewShipmentPaid" class="col-sm-3 col-form-label">Paid?</label>
                <div class="col-sm-8">
                    <asp:DropDownList  runat="server" CssClass="form-control" ID="addNewShipmentPaid">
                        
                        <asp:ListItem value="1">Yes</asp:ListItem>
                        <asp:ListItem value="0">No</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

             <p>
                <asp:Label ID="Label12" runat="server" Text="Shipment Notes"></asp:Label>
                <asp:TextBox ID="TextBoxNewShipmentNotes" runat="server"></asp:TextBox>
            </p>

        </div>
    </form>
</body>
</html>
