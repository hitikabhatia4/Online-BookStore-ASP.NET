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
    public partial class signup : System.Web.UI.Page
    {
        string connetionString = "Data Source=DESKTOP-GET1USV\\MSSQLSERVER01;Initial Catalog=userregist;User ID=newlogin;Password=viratk18";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            
            if (txtname.Text == "" || txtsurname.Text == "" || txtemail.Text == "" || txtphone.Text == "" || txtpass.Text == "" || address.Text == "")
                Response.Write("<script language=javascript>alert('please fill data')</script>");
           
            else
            {

                using (SqlConnection sqlCon = new SqlConnection(connetionString))

                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserData2", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@name", txtname.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@surname", txtsurname.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@phoneno", txtphone.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@password", txtpass.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@address", address.Text.Trim());
                    Response.Write("<script language=javascript>alert('Registration Successful')</script>");
                    sqlCmd.ExecuteNonQuery();
                    Clear();
                }
            }
        }
        void Clear()
        {
            txtname.Text = txtsurname.Text = txtphone.Text = txtemail.Text = txtpass.Text = address.Text = "";
        }



    }
}