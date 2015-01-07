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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void preveriVpis(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value != "jani");
        }
        /*
        protected void preusmeri(object sender, EventArgs e)
        {
            // Connection string for a typical local MySQL installation
            Console.WriteLine("delam");
            string cnnString = "Server=localhost;Port=3306;Database=bazaeredovalnica;Uid=root;Pwd=";

            // Create a connection object
            MySqlConnection con = new MySqlConnection(cnnString);

            // Create a SQL command object

            string ime = Request["name"];
            string priimek = Request["passwd"];
            string geslo = Request["email"];


            string cmdText = "SELECT * FROM ucitelji WHERE imeUcitelja='" + ime + "' AND priimekUcitelja='" + priimek+"'";

            MySqlCommand cmd = new MySqlCommand(cmdText, con);
            cmd.CommandType = CommandType.Text;

            con.Open();
            MySqlDataReader result = cmd.ExecuteReader();
            if (result.HasRows) {

                Response.Redirect("http://localhost:63780/Default.aspx");
            
            }
       
        }

         */



    }
}