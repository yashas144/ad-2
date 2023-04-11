using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ims
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string userName = txtUserName.Text;
                string passwd = txtpassword.Text;
                if (userName == "MRCET" && passwd == "12345")
                {
                    Response.Write("<script>alert('Login Success')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Login Failed. Invalid user or Password')</script>");
                    return;
                }
                //MySqlConnection con;
                //MySqlCommand cmd;

                //con = new MySqlConnection("Data Source=localhost;Database=ims;User ID=root;Password=Annavaram$144");
                //con.Open();
                //Response.Write("<script>alert('Connected successfully')</script>");

               //cmd = new MySqlCommand("Select * from teacher_info", con);
                //MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                //System.Data.DataSet ds = new System.Data.DataSet();
                //adp.Fill(ds);
                //grvTeachers.DataSource = ds; 
                //grvTeachers.DataBind();
                //ask dad as you have commented this


                //con.Close();

                Response.Redirect("~/Contact.aspx");
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('Login failed')</script>" + ex.InnerException);
            }
        }
    }
    
}