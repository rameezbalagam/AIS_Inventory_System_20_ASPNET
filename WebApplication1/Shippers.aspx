<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shippers.aspx.cs" Inherits="WebApplication1.Shippers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LALALAL</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.css" />
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css" />



</head>
<body>


    <!--#include file="menu.html"-->

    <div class="col-md-10">
        <div class="panel panel-default">
            <div class="panel-body">
                <button type='button' data-toggle="collapse" data-target="#addNewShipperCollapse" aria-expanded="false" aria-controls="addNewShipperCollapse"
                    class='btn btn-success bottom1_5' id='addNewShipperOpenFormButton'>
                    Add New Shipper
                </button>
                <!--inside the add new shipper button collapse-->
                <div class="collapse" id="addNewShipperCollapse">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form id="addNewShipperForm" runat="server" data-toggle="validator">
                                <div>

                                    <p>
                                        <asp:Label ID="Label1" runat="server" Text="Company Name:  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperCompanyName" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label2" runat="server" Text="Address 1:  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperAddress1" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label3" runat="server" Text="Address 2:  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperAddress2" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label4" runat="server" Text="City     :  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperCity" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label5" runat="server" Text="State     :  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperState" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label6" runat="server" Text="Zip     :  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperZipCode" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label7" runat="server" Text="Phone     :  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperPhone" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label8" runat="server" Text="Fax     :  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperFax" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label9" runat="server" Text="Email     :  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperEmail" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label11" runat="server" Text="EIN     :  "></asp:Label>
                                        <asp:TextBox ID="TextBoxNewShipperEIN" runat="server"></asp:TextBox>
                                    </p>

                                    <p>
                                        <asp:Label ID="Label12" runat="server" Text="Active     :  "></asp:Label>
                                        <asp:CheckBox ID="CheckBoxNewShipperActive" runat="server" />
                                    </p>

                                    <p>
                                        <asp:Button ID="ButtonAddNewShipper" runat="server" Text="Add New Shipper" OnClick="ButtonAddNewShipper_Click" />
                                    </p>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>


                <!-- Table to show results -->
                <asp:Repeater runat="server" ID="RepeaterShippersTable">
                    <HeaderTemplate>
                        <table class="table table-striped table-bordered table-hover dataTable">
                            <tr>
                                <th>Company Name</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Active</th>
                                <th>Users</th>
                                <th>Vehicles</th>
                                <th>Detail</th>
                                <th>Delete</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="Label1" Text='<%# Eval("companyname") %>' />
                            </td>
                            <td>
                                <asp:Label runat="server" ID="Label13" Text='<%# Eval("phone") %>' />
                            </td>
                            <td>
                                <asp:Label runat="server" ID="Label14" Text='<%# Eval("email") %>' />
                            </td>
                            <td>
                                <asp:Label runat="server" ID="Label15" Text='<%# Eval("active") %>' />
                            </td>
                            <td>
                                <input id="ButtonShipperUsers" type="button" value="Users" class="btn btn-success" />
                            </td>
                            <td>
                                <input id="ButtonShipperVehicles" type="button" value="Vehicles" class="btn btn-info" />
                            </td>
                            <td>
                                <input id="ButtonShipperDetail" type="button" value="Detail" class="btn btn-warning" />
                            </td>
                            <td>
                                <input id="ButtonShipperDelete" type="button" value="Delete" class="btn btn-danger" />
                            </td>

                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>



                <%--  <asp:Table ID="TableShipper" runat="server" CssClass="table table-striped table-bordered table-hover dataTable">
        <asp:TableRow>
            <asp:TableCell>Company Name</asp:TableCell>
            <asp:TableCell>Phone</asp:TableCell>
            <asp:TableCell>Email</asp:TableCell>
            <asp:TableCell>Active</asp:TableCell>
            <asp:TableCell>Users</asp:TableCell>
            <asp:TableCell>Vehicles</asp:TableCell>
            <asp:TableCell>Detail</asp:TableCell>
            <asp:TableCell>Delete</asp:TableCell>
        </asp:TableRow>
    </asp:Table>--%>
            </div>
        </div>
    </div>


    <a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Link with href
    </a>

    <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="collapseExample" aria-expanded="false" aria-controls="collapseExample">
        Button with data-target
    </button>

    <div class="collapse" id="collapseExample">
        <div class="well">
            ...

        </div>
    </div>

</body>
</html>
