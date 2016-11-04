using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alumniproject
{
    public partial class pop_upcalender : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Calender1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToLongDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = !Calendar1.Visible;
        }
        public String SelectedDate
        {
            get
            {
                return TextBox1.Text;
            }
        }
    }
}
       
    


