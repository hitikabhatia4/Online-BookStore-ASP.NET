using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Main_project.Admin
{
    public partial class AddQuantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindItemName();
            BindGridView();
        }

        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["userregistcon"].ConnectionString;
        }

        private void BindItemName()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("select distinct Book_id,book_name from Add_Books", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownList.DataSource = dt;
                DropDownList.DataTextField = "book_name";
                DropDownList.DataValueField = "Book_id";
                DropDownList.DataBind();

            }
            else
            {
                DropDownList.DataSource = null;
                DropDownList.DataBind();
            }
        }

        protected void btnAddqty_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("update Add_Books set quantity=quantity+@quantity where Book_id=@Book_id", con);
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.Parameters.AddWithValue("@quantity",Convert.ToInt32(txtqty.Text));
            cmd.Parameters.AddWithValue("@Book_id", DropDownList.SelectedValue);
            cmd.ExecuteNonQuery();
            con.Close();
            txtqty.Text = string.Empty;
            Response.Write("<script language=javascript>alert('Quantity added sucessfully')</script>");
            BindGridView();
        }



        private void BindGridView()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select book_name,isnull(quantity,0) as quantity,isnull(avalible_qty,0) as avalible_qty,isnull(sell_qty,0) as sell_qty from Add_Books", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
        }


    }
}