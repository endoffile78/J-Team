using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using main_master.sql;

namespace main_master.Utility
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_populate_board_Click(object sender, EventArgs e)
        {
            Boolean bool_pop_gives = checkbox_gives_pop.Checked;
            Boolean bool_pop_project = checkbox_project_pop.Checked;
            Boolean bool_pop_poll = checkbox_poll_pop.Checked;
            int number_to_pop = Convert.ToInt32(number_board_pop.Value);

            
            if (number_to_pop > 0) {
                populate();
            
            
            }
            






        }


        protected void populate() {
            SqlConnectionStringBuilder builder = SqlUtil.make_connection();
            string query = "insert into [dbo].[User_Main]  values ('testemail@email.com',default, 'My Name', 'Computers', 'Classification', 'user type', sysdatetime (), '8122222222', NULL, 25, 'org', default, 'iam4thousand');";
            using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.ExecuteNonQuery();
                }
            }


        }






        protected string rand_email() { 
        
        
        
        
        }



    }
}