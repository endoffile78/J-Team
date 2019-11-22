using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using main_master.sql;

namespace main_master.Board
{
    public partial class new_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            new_post_title.Text = Session["title"].ToString();
           new_post_description.Text = Session["description"].ToString();
            if ((Session["image"].ToString().Length>0)) {
                new_post_image_label.Text = "Image";
               
                Byte[] bytes = (Byte[])Session["image_array"];
                string str = Convert.ToBase64String(bytes, 0, bytes.Length);
                new_post_image.ImageUrl = "data:image/png;base64," + str;
            
            }

            //Response.Write(Session["uid"]);
            Response.Write(new_post_image.ImageUrl.Length);
            
        }


        protected void new_post_submit_click(object sender, EventArgs e) {

            int board = Convert.ToInt32(Session["board"]);



            

            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@ID_Num", Session["uid"]));
            parameters.Add(new SqlParameter("@Title", new_post_title.Text));
            parameters.Add(new SqlParameter("@Description", new_post_description.Text));
            //parameters.Add(new SqlParameter("@Board", board));
            parameters.Add(new SqlParameter("@Board", 1));
            parameters.Add(new SqlParameter("@Date", DateTime.Now));
            parameters.Add(new SqlParameter("@Expiration", DateTime.MaxValue));
            //parameters.Add(new SqlParameter("@Tags", null));
            parameters.Add(new SqlParameter("@Attachments", (Byte[])Session["image_array"]));
            //parameters.Add(new SqlParameter("@Attachments", new_post_image.ImageUrl));
            //parameters.Add(new SqlParameter("@Hidden", default));
            //parameters.Add(new SqlParameter("@Mod_status", default));
            int reader = SqlUtil.ExecuteNonQuery("insert into board_post values (default,@ID_Num,@Title,@Description,@Board,@Date,@Expiration,null,@Attachments,default,default)", parameters);







        }


        protected void new_post_edit_click(object sender, EventArgs e) { 
        
        
        
        }





    }
}
