using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AddNewUser : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        string queryStr;

        int ShippersSelectIndex = 0;

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

        protected void ButtonAddNewUser_Click(object sender, EventArgs e)
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStringAdmin"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

            string stringActive = "1";
            if (!CheckBoxNewUserActive.Checked) stringActive = "0";

            string[] fieldsToAdd = { "company", "username", "lastname", "firstname", "email", "password", "active", "Shippers_idShippers"};
            string[] values = {SelectShippers.SelectedItem.Text, TextBoxNewUserUsername.Text, TextBoxNewUserLastname.Text, TextBoxNewUserFirstname.Text,
                TextBoxNewUserEmail.Text, TextBoxNewUserPassword.Text, stringActive, SelectShippers.SelectedItem.Value };



            //Construct Query here:
            queryStr = "INSERT INTO `users` (";
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