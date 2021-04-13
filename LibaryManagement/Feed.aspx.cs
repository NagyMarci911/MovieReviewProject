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
    public partial class Feed : System.Web.UI.Page
    {
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(constr);
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            SqlCommand command = new SqlCommand("select * from dbo.ReviewDB", connection);
            SqlDataAdapter adapt = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapt.Fill(dt);

        }
    }
}