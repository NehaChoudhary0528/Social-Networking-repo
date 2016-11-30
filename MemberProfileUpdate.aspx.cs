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
    public partial class MemberProfileUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadImage();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte []pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                SqlConnection con = null;
                try
                {
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("delete from photos where email =@email and imgtype='P'", con);
                    cmd.Parameters.AddWithValue("@email", Session["userid"].ToString());
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    cmd = new SqlCommand("insert into photos(email,uploaddate,imgdata,imgtype) values(@email,@uploaddate,@imgdata,'P')", con);
                    cmd.Parameters.AddWithValue("@email", Session["userid"].ToString());
                    cmd.Parameters.AddWithValue("@uploaddate",DateTime.Now);
                    cmd.Parameters.AddWithValue("@imgdata", pic);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    
                    LoadImage();
                }
                catch (ApplicationException ex)
                {
                }

            }
        }
        public void LoadImage()
        {
            SqlConnection con = null;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
                SqlCommand cmd = new SqlCommand("select imgdata from photos where email=@email and imgtype='P'", con);
                cmd.Parameters.AddWithValue("@email", Session["userid"].ToString());
                con.Open();
                byte[] imgdata = (byte[])cmd.ExecuteScalar();
                con.Close();

                Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imgdata, 0, imgdata.Length);

            }
            catch (NullReferenceException ex)
            {
                Image1.ImageUrl = "~/images/default_thumb.jpg";
            }
        }
    }
}