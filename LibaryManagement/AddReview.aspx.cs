using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibaryManagement
{
    public partial class AddReview : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection(constr);
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                Random rnd = new Random();
                string PostID = "";
                for (int i = 0; i < 15; i++)
                {
                    if (rnd.Next(0, 2) == 0)
                    {
                        PostID += rnd.Next('A', 'Z');
                    }
                    else
                    {
                        PostID += rnd.Next(0, 10);
                    }

                }
                string userid = Session["userID"].ToString();
                SqlCommand command = new SqlCommand("insert into dbo.ReviewDB(DirectorName,MovieTitle,Year,Rating,Netflix,Amazon,HBO,ReviewText,PostID,UserID) values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox1.Text.ToString() + "','" + DropDownList1.SelectedValue + "','" + CheckBox1.Checked.ToString() + "','" + CheckBox3.Checked.ToString() + "','" + CheckBox2.Checked.ToString() + "','" + BigTextBox.Text + "','" + PostID + "','" + userid + "')", connection);
                command.ExecuteNonQuery();
                connection.Close();
                ClearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void ClearForm()
        {
            TextBox4.Text = "";
            TextBox3.Text = "";
            TextBox1.Text = "";
            BigTextBox.Text = "";
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
        }
    }
}