<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeeklyOrderList.aspx.cs" Inherits="WebApplication1.WeeklyOrderList" %>

<%--<!DOCTYPE html>--%>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.css" />
<!-- Optional theme -->
<link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css" />
<script src="Scripts/bootstrap.js"></script>

<head runat="server">
    <title>Weekly Shipments List</title>
</head>

<body>

    <form id="form1" runat="server">
        <div>

    <a class="btn btn-primary" role="button" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">Link with href
    </a>

    <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="collapseExample" aria-expanded="false" aria-controls="collapseExample">
        Button with data-target
    </button>

    <div class="collapse" id="collapseExample">
        <div class="well">
            ...

        </div>
    </div>--%>

<!DOCTYPE html>
<html>

<head>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
    <%--<script src="../js/bootstrap.min.js"></script>--%>
    <%--<script type="text/javascript" src="../js/frontEnd.js"></script>--%>
    <%--<script type="text/javascript" src="../js/shippers.js"></script>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.js"></script>
    <%--<script src="../js/bootstrap-formhelpers.js"></script>--%>
    <script src="https://use.fontawesome.com/4302d32e4b.js"></script>



    <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet">
    <script type='text/javascript' src='Scripts/bootstrap.js'></script>
    <script type='text/javascript' src='Scripts/bootstrap.min.js'></script>
    <script type='text/javascript' src='Scripts/jquery-1.9.1.min.js'></script>

    <%--<script src="Scripts/bootstrap.js"></script>--%>
    <%--<script src="Scripts/bootstrap.min.js"></script>--%>
    <%--<script src="Scripts/jquery-1.9.1.min.js"></script>--%>

    <script src="Scripts/bootstrap-formhelpers.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />



</head>

<body>
    <div id="banner"></div>
    <div class="row container-fluid">
        <script> 
            $(function () {
                $("#menu").load("menu.html");
                $("#banner").load("banner.html");
                //$("#header").load("/html/header.html")
            });
        </script>

        <div id="menu"></div>

        <!--Center Content-->
        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-body">
                    <button type='button' data-toggle="collapse" data-target="#addNewShipperCollapse" aria-expanded="false" aria-controls="addNewShipperCollapse"
                        class='btn btn-success bottom1_5' id='addNewShipperOpenFormButton'>Add New Shipper</button>

                    <!--inside the add new shipper button collapse-->
                    <div class="collapse" id="addNewShipperCollapse">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <form data-toggle="validator" role="form" id="addNewShipperForm">
                                    <div class="col-md-4">
                                        <div class="form-group required row">
                                            <label for="newShipperCompanyName" class="col-sm-4 col-form-label">Company Name</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="newShipperCompanyName" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                            <!--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
                                        </div>
                                        <div class="form-group row required">
                                            <label for="newShipperAddress1" class="col-sm-4 col-form-label">Address 1</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="newShipperAddress1" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="newShipperAddress2" class="col-sm-3 col-form-label">Address 2</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" id="newShipperAddress2">
                                            </div>
                                        </div>
                                        <div class="form-group row required">
                                            <label for="newShipperCity" class="col-sm-3 col-form-label">City</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="newShipperCity" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group row required">
                                            <label for="newShipperState" class="col-sm-3 col-form-label">State</label>
                                            <div class="col-sm-8">
                                                <select class="form-control bfh-states" data-country="US" data-state="CA" id="newShipperState"></select>
                                            </div>
                                        </div>
                                        <div class="form-group row required">
                                            <label for="newShipperZipCode" class="col-sm-3 col-form-label">Zip Code</label>
                                            <div class="col-sm-8">
                                                <input type="number" class="form-control" id="newShipperZipCode" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="form-group row required">
                                            <label for="newShipperPhone" class="col-sm-3 col-form-label">Phone</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bfh-phone" id="newShipperPhone" data-format="(ddd) ddd-dddd" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="newShipperFax" class="col-sm-3 col-form-label">Fax</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control bfh-phone" id="newShipperFax" data-format="(ddd) ddd-dddd">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group row required">
                                            <label for="newShipperEmail" class="col-sm-3 col-form-label">Email</label>
                                            <div class="col-sm-8">
                                                <input type="email" class="form-control" id="newShipperEmail" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="form-group row required">
                                            <label for="newShipperEIN" class="col-sm-3 col-form-label">EIN</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="newShipperEIN" required>
                                                <div class="help-block with-errors"></div>
                                            </div>
                                        </div>
                                        <div class="form-check form-group row">
                                            <label class="form-check-label col-sm-3 col-form-label">Active</label>
                                            <div class="col-sm-8">
                                                <input type="checkbox" class="form-check-input" id="newShipperActive">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="addNewShipperButton" class="col-sm-3 col-form-label"></label>
                                            <div class="col-sm-8">
                                                <button type="submit" class="btn btn-primary" id="addNewShipperButton">Add</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <!-- Table to show results -->
                    <table id="shippersTable" class="table table-striped table-bordered table-hover dataTable">
                        <thead>
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
                        </thead>
                        <tbody id="shipperTableBody"></tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

        </div>
    </form>
</body>
</html>
