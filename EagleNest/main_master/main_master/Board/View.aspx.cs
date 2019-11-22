using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using main_master.sql;
using Microsoft.AspNet.FriendlyUrls;

namespace main_master.Board
{
    public partial class View : System.Web.UI.Page
    {
        protected Guid post_id;


        protected void Page_Load(object sender, EventArgs e)
        {
            IList<string> seg = Request.GetFriendlyUrlSegments();

            if (!Guid.TryParse(seg[0], out post_id)) {

                Response.Redirect("http://google.com");//TODO fix
            
            }
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("post_id",post_id));
            SqlDataReader reader = SqlUtil.ExecuteReader("select * from board_post where BpostID=@post_id", p);
            if (!reader.Read())
            {
                reader.Close();
                Response.Redirect("PostNotFound.aspx");
                return;
            }

            Byte[] bytes = (Byte[])reader["Attachments"];
            

            view_title.Text = (string)reader["Title"];
            view_description.Text = (string)reader["Description"];

            if (bytes.Length > 0) {
                string str = Convert.ToBase64String(bytes, 0, bytes.Length);
                view_image.ImageUrl = "data:image/png;base64," + str;
                view_image.Visible = true;
                view_image_label.Visible = true;
            }
            reader.Close();

            





        }
    }
}