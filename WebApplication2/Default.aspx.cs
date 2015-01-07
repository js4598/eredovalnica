using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create new GeoIPService
            string ip = "78.153.43.57";          
            geoip.GeoIPService IPServ = new geoip.GeoIPService();

            // Use GetGeoIP method to check the IP

            geoip.GeoIP IPRes = IPServ.GetGeoIP(ip);

            // If ReturnCode is 1, IP was found

            if (IPRes.ReturnCode == 1)
            {
                // Display the name of the country

                ipText.Text = IPRes.CountryName.ToString();

            }

           // If IP wasn't found

            else
            {
                // And tell the user it wasn't found

                ipText.Text = "IP not found";

            }
        }
        /*
        protected void btnSave_Click(object sender, EventArgs e)
        {
                // Connection string for a typical local MySQL installation
            Console.WriteLine("delam");
                string cnnString = "Server=localhost;Port=3306;Database=bazaeredovalnica;Uid=root;Pwd=";

                // Create a connection object
                MySqlConnection con = new MySqlConnection(cnnString);

                // Create a SQL command object

                string ime = txtFirstName.Text;
                string stDijakov = txtLastName.Text;


                string cmdText = "INSERT INTO predmeti (imePredmeta,steviloDijakov,NaslednjePredavanje) VALUES('"+ime+"',"+stDijakov+",'1.1.2015');";

                MySqlCommand cmd = new MySqlCommand(cmdText, con);
                cmd.CommandType = CommandType.Text;

                con.Open();
                int result = cmd.ExecuteNonQuery();
                GridView1.DataBind();

        }
        */
        public String GetUser_IP()
        {

            // Get request.
            HttpRequest request = base.Request;
            // Get UserHostAddress property.
            string address = request.UserHostAddress;
            return address;
        }

        protected void btnHelloWorld_Click(object sender, EventArgs e)
        {
            btnHelloWorld.Text = "Naslednje predavanje: " + DateTime.Now.ToLongTimeString();
        }



    }
}