using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace alumniproject
{
    public class MyCode
    {
        public static System.Data.DataTable getLikes(String id)
        {
            System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            string sql = "select * from likes where photoid=@photoid";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, myConnection);
            cmd.Parameters.Add("@photoid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(id);
            System.Data.DataSet ds = new System.Data.DataSet();
            System.Data.SqlClient.SqlDataAdapter da = new System.Data.SqlClient.SqlDataAdapter(cmd);
            da.Fill(ds, "like");
            return ds.Tables[0];
        }
        public static String getLikeCounts(String id)
        {
            System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            myConnection.Open();
            string sql = "Select count(photoid) from Likes where photoid=@photoid";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, myConnection);
            cmd.Parameters.Add("@photoid", System.Data.SqlDbType.Int).Value = id;
            cmd.Prepare();
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            String str = dr[0].ToString();
            dr.Close();
            myConnection.Close();
            return str;
        }
        public static bool getLikeStatus(String id, String email)
        {
            System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            myConnection.Open();
            string sql = "Select count(photoid) from Likes where photoid=@photoid and email=@emailid";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, myConnection);
            cmd.Parameters.Add("@photoid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(id);
            cmd.Parameters.Add("@emailid", System.Data.SqlDbType.VarChar).Value = email;
            //cmd.Prepare();
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            String str = dr[0].ToString();
            dr.Close();
            myConnection.Close();
            if (str == "0")
                return false;
            else
                return true;
        }
        public static String changeLikeStatus(String id, String email)
        {
            if (getLikeStatus(id, email) == true)
            {
                System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
                myConnection.Open();
                string sql = "delete from Likes where photoid=@photoid and email=@emailid";
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, myConnection);
                cmd.Parameters.Add("@photoid", System.Data.SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@emailid", System.Data.SqlDbType.VarChar).Value = email;
                //  cmd.Prepare();
                cmd.ExecuteNonQuery();
                myConnection.Close();
                return "Unlike";
            }
            else
            {
                System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
                myConnection.Open();
                string sql = "insert into Likes values(@photoid,@emailid)";
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, myConnection);
                cmd.Parameters.Add("@photoid", System.Data.SqlDbType.Int).Value = id;
                cmd.Parameters.Add("@emailid", System.Data.SqlDbType.VarChar).Value = email;
                //cmd.Prepare();
                cmd.ExecuteNonQuery();
                myConnection.Close();
                return "Like";
            }
        }
        public static bool getEventJoinStatus(String eid, String email)
        {
            System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            myConnection.Open();
            string sql = "Select count(eid) from Event_Joined where eid=@eid and email=@emailid";
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, myConnection);
            cmd.Parameters.Add("@eid", System.Data.SqlDbType.Int).Value = Convert.ToInt32(eid);
            cmd.Parameters.Add("@emailid", System.Data.SqlDbType.VarChar).Value = email;
            //cmd.Prepare();
            System.Data.SqlClient.SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            String str = dr[0].ToString();
            dr.Close();
            myConnection.Close();
            if (str == "0")
                return false;
            else
                return true;
        }
        public static void JoinEvent(String eid, String email)
        {
                if(getEventJoinStatus(eid,email))
                   return ; 
                System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
                myConnection.Open();
                string sql = "insert into Event_Joined values(@eid,@emailid)";
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, myConnection);
                cmd.Parameters.Add("@eid", System.Data.SqlDbType.Int).Value = eid;
                cmd.Parameters.Add("@emailid", System.Data.SqlDbType.VarChar).Value = email;
                //cmd.Prepare();
                cmd.ExecuteNonQuery();
                myConnection.Close();
                return;
            }
        
    }
}