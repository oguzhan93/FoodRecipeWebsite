using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace proje
{
    public partial class Recipe : System.Web.UI.Page
    {
        DBHelper helper = new DBHelper();
        String RecipeId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            RecipeId = Request.QueryString["Yemekid"];
            SqlCommand command = new SqlCommand("select name from dbo.tbl_Foods where Id=@p1", helper.connection());
            command.Parameters.AddWithValue("@p1",RecipeId);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                name.Text = reader[0].ToString();
            }
            reader.Close();
            SqlCommand command1 = new SqlCommand("select Picture from dbo.tbl_Foods where Id=@p2", helper.connection());
            command1.Parameters.AddWithValue("@p2", RecipeId);
            SqlDataReader reader1 = command1.ExecuteReader();
            while (reader1.Read())
            {
                image.ImageUrl = reader1[0].ToString();
            }
            reader1.Close();
           
            SqlCommand command2 = new SqlCommand("select Ingredients from dbo.tbl_Foods where Id=@p3", helper.connection());
            command2.Parameters.AddWithValue("@p3", RecipeId);
            SqlDataReader reader2 = command2.ExecuteReader();
            while (reader2.Read())
            {
                ingredients.Text = reader2[0].ToString();
            }
            reader2.Close();
            SqlCommand command3 = new SqlCommand("select Recipe from dbo.tbl_Foods where Id=@p4", helper.connection());
            command3.Parameters.AddWithValue("@p4", RecipeId);
            SqlDataReader reader3 = command3.ExecuteReader();
            while (reader3.Read())
            {
                recipe.Text = reader3[0].ToString();
            }
            helper.connection().Close();
            reader3.Close();

            SqlCommand command4 = new SqlCommand("select * from dbo.Comments where RecipeId=@p5", helper.connection());
            command4.Parameters.AddWithValue("@p5", RecipeId);
            SqlDataReader reader4 = command4.ExecuteReader();
            DataList1.DataSource = reader4;
            DataList1.DataBind();
            reader4.Close();
        }

        protected void send_button_Click(object sender, EventArgs e)
        {
            String nick = Request["commentName"];
            String comment = Request.Form["comment"];
            nick += ": ";
            SqlCommand addComment = new SqlCommand("insert into dbo.Comments (UserName, Comment, RecipeID) values (@p1, @p2, @p3)", helper.connection());
            addComment.Parameters.AddWithValue("@p1", nick);
            addComment.Parameters.AddWithValue("@p2", comment);
            addComment.Parameters.AddWithValue("@p3", RecipeId);

            addComment.ExecuteNonQuery();
        }
    }
}