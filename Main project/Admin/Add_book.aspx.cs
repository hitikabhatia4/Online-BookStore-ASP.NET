using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
using System.Text;

namespace Main_project.Admin
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["txtusernm"] == null)
            {
                Response.Redirect("adminform.aspx");
            }
        }

        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["userregistcon"].ConnectionString;
        }

        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            if (IsFormValidate())
            {
                
                SqlConnection con = new SqlConnection(GetConnectionString());
                image.SaveAs(Server.MapPath("~/img/") + Path.GetFileName(image.FileName));
                String link = "img/" + Path.GetFileName(image.FileName);
                SqlCommand cmd = new SqlCommand("insert into addnew_books(book_name,book_desc,book_author,price,image,quantity) values(@book_name,@book_desc,@book_author,@price,@image,@quantity) ", con);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //cmd.Parameters.AddWithValue("@Book_id", Book_id.Text);
                
                cmd.Parameters.AddWithValue("@book_name", book_name.Text);
                cmd.Parameters.AddWithValue("@book_desc", book_desc.Text);
                cmd.Parameters.AddWithValue("@book_author", book_author.Text);
                cmd.Parameters.AddWithValue("@price", Convert.ToDouble(price.Text));
                cmd.Parameters.AddWithValue("@image", link);
                //cmd.Parameters.AddWithValue("@category", DropDownList4.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@quantity", quantity.Text);
                cmd.ExecuteNonQuery();
                Clear();
                Response.Write("<script language=javascript>alert('Item added successfully')</script>");

                //Insert and upload images
                if (image.HasFile)
                {
                    string SavePath = Server.MapPath("~/img") ;
                    if (!Directory.Exists(SavePath))
                    {
                        Directory.CreateDirectory(SavePath);

                    }
                    string Extention = Path.GetExtension(image.PostedFile.FileName);
                    image.SaveAs(SavePath + "\\" + book_name.Text.ToString().Trim()  + Extention);

                    //SqlCommand cmd3 = new SqlCommand("insert into tblBookImage values('" + Book_id + "','" + book_name.Text.ToString ().Trim () + "01" + "','" + Extention  + "')", con);
                    SqlCommand cmd3 = new SqlCommand("insert into tblBookImage(book_name,Extention) values(@book_name,@Extention)", con);
                    //cmd3.Parameters.AddWithValue("@Book_id", Convert.ToInt32(Book_id));
                    cmd3.Parameters.AddWithValue("@book_name", book_name.Text.ToString().Trim() );
                    cmd3.Parameters.AddWithValue("@Extention", Extention);
                    cmd3.ExecuteNonQuery();
                }


            }
            else
            {
                Response.Write("<script language=javascript>alert('book name is required')</script>");
            }
            Clear();
        }

        private bool IsFormValidate()
        {
            if (book_name.Text == string.Empty)
            {
                Response.Write("<script language=javascript>alert('book name is required')</script>");
                book_name.Text = string.Empty;
                book_name.Focus();
                return false;
            }
            if (book_desc.Text == string.Empty)
            {
                Response.Write("<script language=javascript>alert('book desc is required')</script>");
                book_desc.Text = string.Empty;
                book_desc.Focus();
                return false;
            }
            if (book_author.Text == string.Empty)
            {
                Response.Write("<script language=javascript>alert('book desc is required')</script>");
                book_author.Text = string.Empty;
                book_author.Focus();
                return false;
            }
            if (price.Text == string.Empty)
            {
                Response.Write("<script language=javascript>alert('book desc is required')</script>");
                price.Text = string.Empty;
                price.Focus();
                return false;
            }
            
            if (quantity.Text == string.Empty)
            {
                Response.Write("<script language=javascript>alert('qunatity desc is required')</script>");
                quantity.Text = string.Empty;
                quantity.Focus();
                return false;
            }
            return true;
        }


        void Clear()
        {
            
            book_name.Text = string.Empty;
            book_desc.Text = string.Empty;  
            book_author.Text = string.Empty; 
            price.Text = string.Empty; 
            quantity.Text = string.Empty; 
        }
    }
}