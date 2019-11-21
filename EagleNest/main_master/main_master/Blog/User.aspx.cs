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
    public partial class User : Page
    {

        protected string uid = "";
        protected string name = "";
        protected List<BlogPost> posts = new List<BlogPost>();

        protected void Page_Load(object sender, EventArgs e)
        {
            IList<string> segments = Request.GetFriendlyUrlSegments();
            uid = segments[0];

            Guid id;
            if (!Guid.TryParse(uid, out id))
            {
                Response.Redirect("UserNotFound.aspx");
            }
            
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("uid", uid));

            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT Fname, Lname FROM User_Main WHERE ID_Num = @uid", parameters);
            if (!reader.Read())
            {
                reader.Close();
                Response.Redirect("UserNotFound.aspx");
            }

            name = reader["Fname"] + " " + reader["Lname"];

            reader.Close();

            parameters.Clear();
            parameters.Add(new SqlParameter("uid", uid));

            SqlDataReader r = SqlUtil.ExecuteReader("SELECT * FROM Blog_Post WHERE ID_Num = @uid", parameters);
            while (r.Read())
            {
                BlogPost post = new BlogPost();
                post.blogID = Guid.Parse(r["BlogID"].ToString());
                post.title = r["Title"].ToString();
                post.body = r["Body"].ToString();
                posts.Add(post);
            }

            r.Close();
        }

        protected void follow_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("uid", Session["uid"]));
            parameters.Add(new SqlParameter("follow_uid", Guid.Parse(uid)));

            SqlUtil.ExecuteNonQuery("INSERT INTO BlogFollowers (Following, Follower) VALUES (@follow_uid, @uid)", parameters);
        }
    }
}