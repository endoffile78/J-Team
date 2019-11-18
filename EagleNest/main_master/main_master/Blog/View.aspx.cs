using main_master.sql;
using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// https://localhost:44350/Blog/View/5fc83cc8-396a-439c-bee0-eb59b338f393
/// </summary>
namespace main_master.Blog
{
    public partial class View : System.Web.UI.Page
    {

        protected string title;
        protected string author;
        protected Guid author_uid;
        protected string body;
        protected string[] tags;

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<string> segments = Request.GetFriendlyUrlSegments();
            string blogID = segments[0];

            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("blogid", blogID));

            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT Blog_Post.*, User_Main.Fname, User_Main.Lname FROM Blog_Post" +
                " INNER JOIN User_Main ON Blog_Post.ID_Num = User_Main.ID_Num" +
                " WHERE BlogID = @blogid", parameters);
            if (!reader.Read())
            {
                reader.Close();
                Response.Redirect("Main.aspx");
                return;
            }

            title = reader["Title"].ToString();
            body = reader["Body"].ToString();
            author = reader["Fname"] +  " " + reader["Lname"];
            author_uid = Guid.Parse(reader["ID_Num"].ToString());

            reader.Close();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {

        }
    }
}