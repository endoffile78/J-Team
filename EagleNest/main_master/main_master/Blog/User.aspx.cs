using main_master.sql;
using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Blog
{
    public partial class User : System.Web.UI.Page
    {

        protected string uid = "";
        protected string name = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<string> segments = Request.GetFriendlyUrlSegments();
            uid = segments[0];

            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("uid", uid));

            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT Fname, Lname FROM User_Main WHERE ID_Num = @uid", parameters);
            if (!reader.Read())
            {
                reader.Close();
                Response.Redirect("UserNotFound.aspx");
                return;
            }

            name = reader["Fname"] + " " + reader["Lname"];

            reader.Close();
        }
    }
}