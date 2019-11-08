using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
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
                
            }
            
        }


        protected void button_populate_users_Click(object sender, EventArgs e) {
            int number_of_users = Convert.ToInt32(textbox_number_users.Value);
            string path = System.Web.HttpContext.Current.Server.MapPath(@"~/sql/pop_users.sql");
            //string pop_users = File.ReadAllText(path);
            string[] pop_users = File.ReadAllLines(path);
            if (number_of_users < 1000) { 
            for (int i = 0; i < number_of_users; i++)
            {
                SqlUtil.ExecuteNonQuery(pop_users[i]);
            }
            }

           

        }






      



    }
}