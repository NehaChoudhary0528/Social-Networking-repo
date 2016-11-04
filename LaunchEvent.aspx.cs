using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace alumniproject
{
    public partial class LaunchEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from event", con);
            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds, "event");
            DataRow row = ds.Tables[0].NewRow();
            row["ename"] = txtename.Text;
            row["edate"] = edate1.SelectedDate;
            row["description"] = txtDesc.Text;
            row["etime"] = txtTime.Text;
            row["contact"] = TxtContact.Text;
            row["launchedby"] = Session["userid"].ToString();
            row["venue"] = txtVenue.Text;

            ds.Tables[0].Rows.Add(row);

            da.Update(ds, "event");

            Response.Write("event registered successfully");

        }
    }
}