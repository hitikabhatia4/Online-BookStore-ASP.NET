using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Main_project
{
    public partial class forgotpass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPass_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["userregistcon"].ConnectionString;
            string strSelect = "SELECT name,password FROM userdata WHERE email = @email";

            SqlConnection connection = new SqlConnection(strConnection);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = strSelect;

            SqlParameter email = new SqlParameter("@email", SqlDbType.VarChar, 50);
            email.Value = txtEmail.Text.Trim().ToString();
            command.Parameters.Add(email);

            //Create Dataset to store results and DataAdapter to fill Dataset 
            DataSet dsPwd = new DataSet();
            SqlDataAdapter dAdapter = new SqlDataAdapter(command);
            connection.Open();
            dAdapter.Fill(dsPwd);
            connection.Close();
            if (dsPwd.Tables[0].Rows.Count > 0)
            {
                MailMessage loginInfo = new MailMessage();
                loginInfo.To.Add(txtEmail.Text.ToString());
                loginInfo.From = new MailAddress("YourID@gmail.com");
                loginInfo.Subject = "Forgot Password Information";

                loginInfo.Body = "Username: " + dsPwd.Tables[0].Rows[0]["name"] + "<br><br>Password: " + dsPwd.Tables[0].Rows[0]["password"] + "<br><br>";
                loginInfo.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("bhatiahitika4@gmail.com", "viratk18");
                smtp.Send(loginInfo);
                lblMessage.Text = "Password is sent to you email id,you can now" ;
            }
            else
            {
                lblMessage.Text = "Email Address Not Registered";
            }

        }
    }
    
}