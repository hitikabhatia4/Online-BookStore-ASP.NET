using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Main_project
{
    public partial class adminform : System.Web.UI.Page
    {
        string connetionString = "Data Source=DESKTOP-GET1USV\\MSSQLSERVER01;Initial Catalog=userregist;User ID=newlogin;Password=viratk18";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnloginform_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connetionString))
            {
                Session["txtusernm"] = txtusernm.Text;
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("select COUNT(*) FROM adminlogin WHERE username='" + txtusernm.Text + "' and password='" + txtpass.Text + "'");
                cmd.Connection = sqlCon;
                int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
                if (OBJ > 0)
                {
                   // Response.Write("<script language=javascript>alert('Login Sucessful')</script>");
                    Response.Redirect("AdminHome.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Invalid Password or Username')</script>");
                    
                }
                clr();
            }
        }
        private void clr()
        {
            txtusernm.Text = string.Empty;
            txtpass.Text = string.Empty;

        }
    }
}