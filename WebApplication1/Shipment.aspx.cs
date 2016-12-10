using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Shipment : System.Web.UI.Page
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

        }
    }
}