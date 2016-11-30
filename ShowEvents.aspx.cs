using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alumniproject
{
    public partial class ShowEvents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"]==null||Session["userid"].ToString().Equals(""))
            {
                Response.Redirect("~/login.aspx");
                return;
            }
        }

        protected void joinlink_Click(object sender, EventArgs e)
        {
            if (Session["userid"] == null || Session["userid"].ToString().Equals(""))
            {
                Response.Redirect("~/login.aspx");
                return;
            }
            MyCode.JoinEvent(Request.QueryString["eid"], Session["userid"].ToString());

            Response.Write("<script>alert('Congratulations, we'll be waiting for you ')</script>");
        }
        
    }
}