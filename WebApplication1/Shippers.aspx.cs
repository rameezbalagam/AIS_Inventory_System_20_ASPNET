using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Shippers : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        string queryStr;

        List<TableRow> listOfRows = new List<TableRow>();
        


        protected void populateShippersTable()
        {
            queryStr = "SELECT * FROM ais_inventory_system_20.shippers";

            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStringAdmin"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

            MySql.Data.MySqlClient.MySqlDataAdapter da = new MySql.Data.MySqlClient.MySqlDataAdapter(cmd);


            var reader = cmd.ExecuteReader();
            conn.Close();
            DataSet ds = new DataSet();
            da.Fill(ds);

            //while (reader.Read())
            //{
            //    TableRow row = new TableRow();
            //    TableCell cell = new TableCell();

            //    for (int i =0; i < reader.FieldCount; i++)
            //    {
            //        cell.Text = reader.GetString(i);
            //        row.Cells.Add(cell);

            //    }

            //    listOfRows.Add(row);                
            //}

            
            
            //conn.Close();
            RepeaterShippersTable.DataSource = ds;
            RepeaterShippersTable.DataBind();
            
    

            //TableShipper (ds.ToString());
            //SelectShippers.DataSource = ds;
            //SelectShippers.DataBind();
            //SelectShippers.Items.Insert(0, new ListItem("--Select--", "0"));

        }


        protected void Page_Load(object sender, EventArgs e)
        {

            populateShippersTable();
            //TableRow row = new TableRow();
            //TableCell cell1 = new TableCell();
            //cell1.Text = "blah blah blah";
            //row.Cells.Add(cell1);
            //TableShipper.Rows.Add(row);


        }


        protected void ButtonAddNewShipper_Click(object sender, EventArgs e)
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStringAdmin"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

            string stringActive = "1";
            if (!CheckBoxNewShipperActive.Checked) stringActive = "0";

            string[] fieldsToAdd = { "companyname", "address", "address2", "city", "state", "zip", "phone", "fax", "email", "ein", "active" };
            string[] values = {TextBoxNewShipperCompanyName.Text, TextBoxNewShipperAddress1.Text, TextBoxNewShipperAddress2.Text,
                TextBoxNewShipperCity.Text, TextBoxNewShipperState.Text, TextBoxNewShipperZipCode.Text, TextBoxNewShipperPhone.Text,
                TextBoxNewShipperFax.Text, TextBoxNewShipperEmail.Text, TextBoxNewShipperEIN.Text, stringActive };



            //Construct Query here:
            queryStr = "INSERT INTO `shippers` (";
            for (int i = 0; i < fieldsToAdd.Length; i++)
            {
                queryStr = queryStr + fieldsToAdd[i] + ", ";
            }

            queryStr = queryStr.Substring(0, queryStr.Length - 2);

            queryStr = queryStr + ") VALUES(";

            for (int i = 0; i < values.Length; i++)
            {
                queryStr = queryStr + "'" + values[i] +"', ";
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