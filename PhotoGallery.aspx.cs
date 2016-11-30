using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace alumniproject
{
    public partial class PhotoGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] == null || Session["userid"].ToString().Equals(""))
            {
                Response.Redirect("~/login.aspx");
                return;
            }
            
        }

        
        public void LoadImage()
        {
           // SqlConnection con = null;
            //try
            {
               // con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
              //  SqlCommand cmd = new SqlCommand("select imgdata from photos", con);
                //con.Open();
                //byte[] imgdata = cmd.ExecuteReader();
                //con.Close();

               // Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imgdata, 0, imgdata.Length);

            }
            //catch (NullReferenceException ex)
            {
               // Image1.ImageUrl = "~/images/default_thumb.jpg";
            }
        }
        

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            alumniproject.MyCode.changeLikeStatus(Request.QueryString["id"].ToString(), Session["userid"].ToString());
            FormView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            DataTable dt = MyCode.getLikes(Request.QueryString["id"]);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            Panel1.Visible = !Panel1.Visible;
        }

        //protected void LinkButton3_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("profile.aspx");
        //}
    }
}