using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class NewRecipe : System.Web.UI.Page
    {
        DBHelper helper = new DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void share_button_Click(object sender, EventArgs e)
        {
            imageOfRecipe.SaveAs(Server.MapPath("/Images/") + imageOfRecipe.FileName);

            SqlCommand addCommand = new SqlCommand("insert into dbo.tbl_Foods (Name, Ingredients, Recipe, Picture) values (@p1,@p2,@p3,@p4)", helper.connection());
            addCommand.Parameters.AddWithValue("@p1", foodname.Text);
            addCommand.Parameters.AddWithValue("@p2", ingredients.Text);
            addCommand.Parameters.AddWithValue("@p3", Request.Form["recipe"]);
            addCommand.Parameters.AddWithValue("@p4", "~/Images/" + imageOfRecipe.FileName);
            addCommand.ExecuteNonQuery();
            helper.connection().Close();
        }
    }
}