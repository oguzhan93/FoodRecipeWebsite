using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace proje
{
    public class DBHelper
    {
        public SqlConnection connection()
        {
          
            {
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-8OMSEHE;Initial Catalog=DB_Recipes;Integrated Security=True;");
                connection.Open();
                return connection;
            }
 
            
        }


    }
}