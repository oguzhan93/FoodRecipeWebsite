using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace proje
{
    public partial class index : System.Web.UI.Page
    {
        DBHelper helper = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand getRecipes = new SqlCommand("select * from dbo.tbl_Foods", helper.connection());
            SqlDataReader reader = getRecipes.ExecuteReader();
            DataList1.DataSource = reader;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}