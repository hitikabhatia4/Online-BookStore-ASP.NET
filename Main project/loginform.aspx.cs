using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Main_project
{
    public partial class loginform : System.Web.UI.Page
    {
        string connetionString = "Data Source=DESKTOP-GET1USV\\MSSQLSERVER01;Initial Catalog=userregist;User ID=newlogin;Password=viratk18";

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connetionString))
            {
                Session["txtemail"] = txtemail.Text;
                sqlCon.Open();
                SqlCommand cmd = new SqlCommand("select COUNT(*) FROM userdata WHERE name='" + txtemail.Text + "' and password='" + txtpass.Text + "'");
                cmd.Connection = sqlCon;
                int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
                
                if (OBJ > 0)
                {
                    Session["txtemail"] = txtemail.Text;
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Invalid email or password')</script>");
                }
                clr();
            }
            
        }
        private void clr()
        {
            txtemail.Text = string.Empty;
            txtpass.Text = string.Empty;

        }
    }
}
