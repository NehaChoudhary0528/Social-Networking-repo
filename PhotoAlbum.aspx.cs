using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace alumniproject
{
    public partial class PhotoAlbum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

                SqlConnection con = null;
                try
                {
                    con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
                    SqlCommand cmd = new SqlCommand("insert into photos(email,uploaddate,imgdata,imgtype) values(@email,@uploaddate,@imgdata,'P')", con);
                    cmd.Parameters.AddWithValue("@email", Session["userid"].ToString());
                    cmd.Parameters.AddWithValue("@uploaddate", DateTime.Now);
                    cmd.Parameters.AddWithValue("@imgdata", pic);
                    cmd.Parameters.AddWithValue("@imgtype", "A");
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    DataList1.DataBind();
                   
                }
                catch (ApplicationException ex)
                {
                }

            }

        }
    }
}