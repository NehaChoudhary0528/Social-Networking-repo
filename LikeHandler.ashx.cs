using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace alumniproject
{
    /// <summary>
    /// Summary description for LikeHandler
    /// </summary>
    public class LikeHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            myConnection.Open();
            string sql = "Select imgdata from photos where email=@email and imgtype='P'";
            SqlCommand cmd = new SqlCommand(sql, myConnection);
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = context.Request.QueryString["email"];
            //cmd.Prepare();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            context.Response.ContentType = "image/jpg";
            context.Response.BinaryWrite((byte[])dr["imgdata"]);
            dr.Close();
            myConnection.Close();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}