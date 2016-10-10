using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace alumniproject
{
    /// <summary>
    /// Summary description for Handler
    /// </summary>
    public class Handler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            SqlConnection myConnection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            myConnection.Open();
            string sql = "Select imgdata from photos where photoid=@photoid";
            SqlCommand cmd = new SqlCommand(sql, myConnection);
            cmd.Parameters.Add("@photoid", SqlDbType.Int).Value = context.Request.QueryString["id"];
            cmd.Prepare();
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