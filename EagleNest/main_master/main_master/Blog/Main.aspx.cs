using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using main_master.sql;
using System.Data.SqlClient;

namespace main_master.Blog
{
    public partial class Main : System.Web.UI.Page
    {

        protected List<BlogPost> posts = new List<BlogPost>();
        protected List<BlogPost> follow_posts = new List<BlogPost>();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT TOP 50 *, User_Main.Fname, User_Main.Lname FROM Blog_Post" +
                " INNER JOIN User_Main ON User_Main.ID_Num = Blog_Post.ID_Num");

            while (reader.Read())
            {
                BlogPost post = new BlogPost();
                post.blogID = Guid.Parse(reader["BlogID"].ToString());
                post.author_uid = Guid.Parse(reader["ID_Num"].ToString());
                post.author_name = reader["Fname"] + " " + reader["Lname"];
                post.title = reader["Title"].ToString();
                post.body = reader["Body"].ToString();
                posts.Add(post);
            }

            reader.Close();

            /*
            if (Session["loggedIn"] != null)
            {
                SqlDataReader r = SqlUtil.ExecuteReader("SELECT * FROM Blog_Post");
                while (r.Read())
                {
                    BlogPost post = new BlogPost();
                    post.blogID = Guid.Parse(reader["BlogID"].ToString());
                    post.author_uid = Guid.Parse(reader["ID_Num"].ToString());
                    post.title = reader["Title"].ToString();
                    post.body = reader["Body"].ToString();
                    follow_posts.Add(post);
                }
                r.Close();
            }
            */

        }
    }
}