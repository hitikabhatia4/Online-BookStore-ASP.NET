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
    public partial class Contactus : System.Web.UI.Page
    {
        string connetionString = "Data Source=DESKTOP-GET1USV\\MSSQLSERVER01;Initial Catalog=userregist;User ID=newlogin;Password=viratk18";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnloginform_Click(object sender, EventArgs e)
        {
            if(textuser.Text == "" ||  textemail.Text == ""  || feedback.Text == "")
                Response.Write("<script language=javascript>alert('please fill data')</script>");


            else
            {

                using (SqlConnection sqlCon = new SqlConnection(connetionString))

                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("Userfeedback", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@name", textuser.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@email", textemail.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@feedback", feedback.Text.Trim());
                    Response.Write("<script language=javascript>alert('Registration Sucessful')</script>");
                    sqlCmd.ExecuteNonQuery();
                    Clear();
                }
            }
        }
        void Clear()
        {
            textuser.Text = textemail.Text =  feedback.Text = "";
        }
    }
    
}