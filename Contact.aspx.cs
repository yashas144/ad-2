using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ims
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con;
                MySqlCommand cmd;

                con = new MySqlConnection("Data Source=localhost;Database=ims;User ID=root;Password=Annavaram$144");
                con.Open();
                Response.Write("<script>alert('Connected to Database successfully')</script>");

                cmd = new MySqlCommand("select t1.emp_id, t1.emp_name, t2.APR_21_2023, t2.APR_24_2023, t2.APR_25_2023, t2.APR_26_2023, t2.APR_27_2023 from teacher_info t1 inner join exam_schedule t2 on t1.emp_id = t2.empid", con);
                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                System.Data.DataSet ds = new System.Data.DataSet();
                adp.Fill(ds);
                grvTeachers.DataSource = ds;
                grvTeachers.DataBind();


                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Connection failed')</script>" + ex.InnerException);
            }
        }

        protected void grvTeachers_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowIndex >= 0)
            {
                if ((e.Row.Cells[2].Text) == "Yes")
                {
                    e.Row.Cells[2].BackColor = System.Drawing.Color.LightGreen;
                }
                else 
                {
                    e.Row.Cells[2].BackColor = System.Drawing.Color.LightPink;
                }
                if ((e.Row.Cells[3].Text) == "Yes")
                {
                    e.Row.Cells[3].BackColor = System.Drawing.Color.LightGreen;
                }
                else
                {
                    e.Row.Cells[3].BackColor = System.Drawing.Color.LightPink;
                }
                if ((e.Row.Cells[4].Text) == "Yes")
                {
                    e.Row.Cells[4].BackColor = System.Drawing.Color.LightGreen;
                }
                else
                {
                    e.Row.Cells[4].BackColor = System.Drawing.Color.LightPink;
                }
                if ((e.Row.Cells[5].Text) == "Yes")
                {
                    e.Row.Cells[5].BackColor = System.Drawing.Color.LightGreen;
                }
                else
                {
                    e.Row.Cells[5].BackColor = System.Drawing.Color.LightPink;
                }
                if ((e.Row.Cells[6].Text) == "Yes")
                {
                    e.Row.Cells[6].BackColor = System.Drawing.Color.LightGreen;
                }
                else
                {
                    e.Row.Cells[6].BackColor = System.Drawing.Color.LightPink;
                }
            }
        }

        /*private void BindGridView()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spGetProductList", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
            }
        }*/
    }
}