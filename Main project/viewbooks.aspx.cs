using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Main_project
{
    public partial class viewbooks : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["userregistcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                BindBookRepeater();
            }
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buybooks"];
            if(dt!=null)
            {
                Label1.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label1.Text = "0";
            }
        }

        private void BindBookRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindBooks", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrbook.DataSource = dt;
                        rptrbook.DataBind();
                    }
                }
            }

        }

        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["userregistcon"].ConnectionString;
        }

        protected void ImageButton1_Click(object sender, EventArgs e)
        {

            

        }

        protected void rptrbook_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
            Response.Redirect("AddtoCart.aspx?book_name=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());
        }



        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddtoCart.aspx");
        }

    }
    
}