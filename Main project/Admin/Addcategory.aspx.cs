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
    public partial class Addcategory : System.Web.UI.Page
    {
        string connetionString = "Data Source=DESKTOP-GET1USV\\MSSQLSERVER01;Initial Catalog=userregist;User ID=newlogin;Password=hitika";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userregistcon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Category (CName) values (@CName)", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.Parameters.AddWithValue("@CName", txtCategory.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language=javascript>alert('Added Sucessfully')</script>");
            BindingGridview();
            txtCategory.Text = string.Empty;
            txtCategory.Focus();
        }

        private void BindingGridview()
        {
            SqlCommand cmd = new SqlCommand("select * from Category", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {

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