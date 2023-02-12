using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proje
{
    public partial class RandomRecipeaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string link = "Recipe.aspx?Yemekid=";
            link += getRandomRecipeID();
            Response.Redirect(link);
        }

        static string getRandomRecipeID()
        {
            var random = new Random();
            int number = random.Next(43, 46);
            return number.ToString();
        }
    }
}