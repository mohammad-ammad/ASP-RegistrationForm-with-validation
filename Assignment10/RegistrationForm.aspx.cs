using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Assignment10
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-SKRQQHL\SQLEXPRESS;Initial Catalog=UserRegiter;Integrated Security=True");
        bool exist = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void usernameCheck(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) from Users WHERE username = '"+username.Text+"'", con);
            int count = (int)cmd.ExecuteScalar();
            if(count > 0)
            {
                args.IsValid = false;
            }
            else
            {
                exist = true;
            }
            con.Close();
        }

        protected void Register(object sender, EventArgs e)
        {

            if (exist)
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Users(username,password,DOB,email) VALUES('" + username.Text + "','" + password.Text + "','" + DOB.Text + "','" + email.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Register Successful')</script>");
            }
            
        }
    }
}