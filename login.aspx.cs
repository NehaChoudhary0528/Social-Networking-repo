using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace alumniproject
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            String qry = "select * from userinfo where email='" + Login1.UserName + "' and password='" + Login1.Password + "'";
            SqlDataAdapter da = new SqlDataAdapter(qry, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "userinfo");
            if (ds.Tables["userinfo"].Rows.Count > 0)
            {
                Session.Add("userid", Login1.UserName);
                Session.Add("usertype", "student");
                Session.Timeout = 10;
                e.Authenticated = true;
                Response.Redirect("~/profile.aspx");
            }
            else
                e.Authenticated = false;

        }
    }
}