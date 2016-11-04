using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alumniproject
{
    public partial class Post : System.Web.UI.Page
    {
        String comments;
        protected void Page_Load(object sender, EventArgs e)
        {
            comments = "";
            if (Session["userid"] == null || Session["userid"].ToString().Equals(""))
            {
                Response.Redirect("~/login.aspx");
                return;
            }
        }

        protected void Datalist1_ItemCreated(object sender, DataListItemEventArgs e)
        {
          
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from Post_Comments", con);
            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds, "post_comments");
            DataRow row = ds.Tables[0].NewRow();
            row["PostId"] = Request.QueryString["postid"]; 
            row["email"] = Session["userid"].ToString();
            row["comment"] = comments;
            row["date"] = DateTime.Now.ToString();
            
            ds.Tables[0].Rows.Add(row);

            da.Update(ds, "post_comments");
            comments = "";
           Datalist1.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {   TextBox tb=(TextBox)sender;
            comments = tb.Text;
        }
    }
}