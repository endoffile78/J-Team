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
        protected List<UserProfile> following = new List<UserProfile>();
        protected List<UserProfile> followers = new List<UserProfile>();

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

            parameters.Clear();
            parameters.Add(new SqlParameter("@uid", Session["uid"]));
            r = SqlUtil.ExecuteReader("SELECT *, User_Main.Fname, User_Main.Lname, User_Main.ID_Num FROM BlogFollowers WHERE Following = @uid" +
                " INNER JOIN User_Main ON BlogFollowers.Followers = User_Main.ID_Num");

            while (r.Read()) {
                UserProfile user = new UserProfile();
                user.name = reader["Fname"] + " " + reader["Lname"];
                user.uid = Guid.Parse(reader["ID_Num"].ToString());              
            }

            r.Close();

            parameters.Clear();
            parameters.Add(new SqlParameter("@uid", Session["uid"]));
            r = SqlUtil.ExecuteReader("SELECT *, User_Main.Fname, User_Main.Lname, User_Main.ID_Num FROM BlogFollowers WHERE Follower = @uid" +
                " INNER JOIN User_Main ON BlogFollowers.Following = User_Main.ID_Num");

            while (r.Read()) {
                UserProfile user = new UserProfile();
                user.name = reader["Fname"] + " " + reader["Lname"];
                user.uid = Guid.Parse(reader["ID_Num"].ToString());
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