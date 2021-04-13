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
    public partial class UserLogin : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection connection = new SqlConnection(constr);
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }
                SqlCommand command = new SqlCommand("select * from UserDB where UserID='"+TextBox1.Text.Trim()+"' and Password='"+TextBox2.Text.Trim()+"'", connection);
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Session["userName"] = reader.GetValue(1).ToString();
                        Session["userID"] = reader.GetValue(0).ToString();
                        Session["status"] = "active";
                    }
                  

                    Response.Redirect("UserProfile.aspx");

                }
                else
                {
                    Label.Style["Display"] = "block";
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}