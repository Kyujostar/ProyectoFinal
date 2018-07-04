using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace ProyectofinalVS
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
           using (SqlConnection sqlcon = new SqlConnection(@"Data Source= JoseVM\\SQL; initial catalog = ProyectofinalDB; Integrated Security =True;")) 

            {
                String query = "SELECT COUNT (1)  FROM Login WHERE Username=@Username AND Password = @Password";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@Username", usernametxt.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Password", passwordtxt.Text.Trim());

                SqlDataAdapter sqlda = new SqlDataAdapter("SELECT * FROM Login", sqlcon);
             
                
            }
        }
    }
}