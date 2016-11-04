using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace alumniproject
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadImage();
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
                Image1.ImageUrl="~/images/default_thumb.jpg";
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Remove("userid");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from Post", con);
            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds, "Post");
            DataRow row = ds.Tables[0].NewRow();
            row["email"] = Session["userid"].ToString();
            row["content"] = TextBox1.Text;
            row["date"] = DateTime.Now.ToString();
            ds.Tables[0].Rows.Add(row);

            da.Update(ds, "Post");

            GridView1.DataBind();
        }
    }
}