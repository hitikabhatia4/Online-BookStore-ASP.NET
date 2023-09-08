using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Main_project.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["txtusernm"] == null)
            {
                Response.Redirect("adminform.aspx");
            }
            
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //Session.RemoveAll();
            Response.Redirect("adminform.aspx");
        }

        
       
    }
}