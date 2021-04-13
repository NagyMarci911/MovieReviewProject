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
    public partial class SignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfUsernameExists())
            {
                Label1.Text = "That UserID is already in use, please chose another!";
                Label1.Style["display"] = "block";
            }
            else
            {
                PutSignupDataToSQL();
            }

        }

        private bool CheckIfUsernameExists()
        {
            try
            {
                SqlConnection connection = new SqlConnection(strcon);
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                SqlCommand command = new SqlCommand("select * from dbo.UserDB where UserID='" +TextBox1.Text.Trim()+ "';", connection);
                command.Parameters.AddWithValue("@UserID", TextBox1.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count>=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Style["display"] = "block";


                return false;
            }
        }

        private void PutSignupDataToSQL()
        {
            try
            {
                SqlConnection connection = new SqlConnection(strcon);
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                SqlCommand command = new SqlCommand("insert into dbo.UserDB(UserID,UserName,DateOfBirth,Country,Password) values(@UserID,@UserName,@DateOfBirth,@Country,@Password)", connection);
                command.Parameters.AddWithValue("@UserID", TextBox1.Text.Trim());
                command.Parameters.AddWithValue("@UserName", TextBox3.Text);
                command.Parameters.AddWithValue("@DateOfBirth", TextBox4.Text);
                command.Parameters.AddWithValue("@Country", DropDownList1.SelectedItem.Value);
                command.Parameters.AddWithValue("@Password", TextBox5.Text);

                command.ExecuteNonQuery();
                connection.Close();
                
                //Response.Write("<script type='text/javascript' language='javascript'>alert('Sign up succesfull, please log in');</script>");


            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Style["display"] = "block";
            }
            Label1.Style["display"] = "none";
            Response.Redirect("UserLogin.aspx");
        }

    }
}