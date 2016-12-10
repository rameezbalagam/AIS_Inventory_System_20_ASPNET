using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Registration : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        string queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonRegSubmit_Click(object sender, EventArgs e)
        {
            string myString = TextBoxRegName.Text + " " + TextBoxRegAddress.Text;
            LabelOutputDebug.Text = myString + "Adding dummy data to shippers table..";
            registerNewUser();
        }


        private void registerNewUser()
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["connStringAdmin"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "INSERT INTO `shippers` (companyname, address, zip) VALUES('testNameFromVS' ,'testaddrFromVS','77074')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            cmd.Connection.Close();


        }
    }
}