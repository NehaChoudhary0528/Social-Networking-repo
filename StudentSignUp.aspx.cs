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
    public partial class StudentSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["myconstr"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from userinfo", con);
            SqlCommandBuilder builder = new SqlCommandBuilder(da);
            DataSet ds = new DataSet();
            da.Fill(ds, "userinfo");

            DataRow row = ds.Tables[0].NewRow();
            row["Name"] = TextBox1.Text;
            row["email"] = TextBox2.Text;
            row["dob"] = mycal1.SelectedDate;
            row["passing_year"] = pop_upcalender1.SelectedDate;
            row["qualification"] = DropDownList1.SelectedItem.ToString() ;
            row["country"] = DropDownList3.SelectedItem.ToString();
            row["contact"] = TextBox4.Text.ToString();
            row["branch"] = DropDownList2.SelectedItem.ToString();
            row["address"] = TextBox8.Text;
            row["password"] = TextBox9.Text;



            if (RadioButton1.Checked == true)
                row["gender"] = "M";
            else
                row["gender"] = "F";

            ds.Tables[0].Rows.Add(row);

            da.Update(ds, "userinfo");

            Response.Write("User registered successfully");


           
            
        }

       
    }
}