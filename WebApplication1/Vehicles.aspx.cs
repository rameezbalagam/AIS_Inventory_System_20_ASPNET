using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Vehicles : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        string queryStr;

        protected void getShippers()
        {
            queryStr = "SELECT * FROM shippers";

            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStringAdmin"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            MySql.Data.MySqlClient.MySqlDataAdapter da = new MySql.Data.MySqlClient.MySqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            conn.Close();

            SelectShippers.DataSource = ds;
            SelectShippers.DataTextField = "companyname";
            SelectShippers.DataValueField = "idShippers";
            SelectShippers.DataBind();
            SelectShippers.Items.Insert(0, new ListItem("--Select--", "0"));

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getShippers(); //populate "shipper" drop down           
            }

            //TextBoxAddNewVehicleMake.CssClass += "form-control col-md-4";

        }

        protected void ButtonAddNewVehicle_Click(object sender, EventArgs e)
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStringAdmin"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

            //string stringActive = "1";
            //if (!CheckBoxNewUserActive.Checked) stringActive = "0";

            string[] fieldsToAdd = {"comapany",
                                    "vin",
                                    "make",
                                    "model",
                                    "year",
                                    "color",
                                    "titlenumber",
                                    "nameontitle",
                                    "titlestate",
                                    "haskey",
                                    "titlereceivedate",
                                    "value",
                                    "weight",
                                    "volume",
                                    "pickuplocation",
                                    "entrydate",
                                    "loadfee",
                                    "storagefee",
                                    "truckingfee",
                                    "otherfee", 
                                    "Shippers_idShippers"
                                };


            string[] values = {
                SelectShippers.SelectedItem.Text,
                TextBoxAddNewVehicleVin.Text,
                TextBoxAddNewVehicleMake.Text,
                TextBoxAddNewVehicleModel.Text,
                TextBoxAddNewVehicleYear.Text,
                TextBoxAddNewVehicleColor.Text,
                TextBoxAddNewVehicleTitleNumber.Text,
                TextBoxAddNewVehicleNameOnTitle.Text,
                TextBoxAddNewVehicleTitleState.Text,
                AddNewVehicleSelectHasKey.Text,
                TextBoxAddNewVehicleTitleReceiveDate.Text,
                TextBoxAddNewVehicleValue.Text,
                TextBoxAddNewVehicleWeight.Text,
                TextBoxAddNewVehicleVolume.Text,
                TextBoxAddNewVehiclePickupLocation.Text,
                TextBoxAddNewVehicleEntryDate.Text,
                TextBoxAddNewVehicleLoadFee.Text,
                TextBoxAddNewVehicleStorageFee.Text,
                TextBoxAddNewVehicleTruckingFee.Text,
                TextBoxAddNewVehicleOtherFee.Text,
                SelectShippers.SelectedValue
                };



            //Construct Query here:
            queryStr = "INSERT INTO `vehicles` (";
            for (int i = 0; i < fieldsToAdd.Length; i++)
            {
                queryStr = queryStr + fieldsToAdd[i] + ", ";
            }

            queryStr = queryStr.Substring(0, queryStr.Length - 2);

            queryStr = queryStr + ") VALUES(";

            for (int i = 0; i < values.Length; i++)
            {
                queryStr = queryStr + "'" + values[i] + "', ";
            }

            queryStr = queryStr.Substring(0, queryStr.Length - 2);
            queryStr = queryStr + ");";

            conn.Open();
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            cmd.Connection.Close();

        }
    }
}