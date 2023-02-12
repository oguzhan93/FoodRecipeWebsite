using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace proje
{
    public partial class LogIn : System.Web.UI.Page
    {
        DBHelper helper = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn_Button_Click(object sender, EventArgs e)
        {
            String username = Request["username"];
            String password = Request["password"];
            SqlCommand command = new SqlCommand("select * from dbo.User where username='" + username +"'", helper.connection());
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable table = new DataTable();
            adapter.Fill(table);
            command.ExecuteNonQuery();
            if (table.Rows.Count > 0)
            {
                Session["ID"] = username;
                Response.Redirect("index.aspx");
            }
            else
            {
                login.Text = "Invalid username or password";
            }
            
        }
    }
}