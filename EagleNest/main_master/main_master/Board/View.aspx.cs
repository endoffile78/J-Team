using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
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
        List<string> option_list;
        List<Guid> id_list;
        byte board;

        protected void Page_Load(object sender, EventArgs e)
        {
            require_login();
            
            IList<string> seg = Request.GetFriendlyUrlSegments();

            if (!Guid.TryParse(seg[0], out post_id)) {

                Response.Redirect("/Board/404.aspx");
            
            }

            
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@post_id",post_id));
            SqlDataReader reader = SqlUtil.ExecuteReader("select * from board_post where BpostID=@post_id", p);
            
            if (!reader.Read())
            {
                reader.Close();
                Response.Redirect("404.aspx");
                return;
            }

            Byte[] bytes = (Byte[])reader["Attachments"];
            

            view_title.Text = (string)reader["Title"];
            board = (byte)reader["Board"];
            view_description.Text = (string)reader["Description"];

            if (bytes.Length > 0) {
                string str = Convert.ToBase64String(bytes, 0, bytes.Length);
                view_image.ImageUrl = "data:image/png;base64," + str;
                view_image.Visible = true;
                view_image_label.Visible = true;
            }
            reader.Close();

            if (board == 2)
            {
                
                
                p.Clear();
                p.Add(new SqlParameter("@post_id", post_id));
                SqlDataReader reader2 = SqlUtil.ExecuteReader("select * from poll_options where BpostID=@post_id", p);
                option_list = new List<string>();
                id_list = new List<Guid>();
                while (reader2.Read()) {
                    
                    option_list.Add(reader2.GetString(2));
                    id_list.Add(reader2.GetGuid(0));
                   

                }
                reader2.Close();


                build_poll_radios();

            }







        }

        protected void build_poll_radios()
        {

            if (!has_voted())
            {
                if (option_list[0] != "") { option1.Text = option_list[0]; option1.Visible = true; }
                if (option_list[1] != "") { option2.Text = option_list[1]; option2.Visible = true; }
                if (option_list[2] != "") { option3.Text = option_list[2]; option3.Visible = true; }
                if (option_list[3] != "") { option4.Text = option_list[3]; option4.Visible = true; }
                if (option_list[4] != "") { option5.Text = option_list[4]; option5.Visible = true; }
                if (option_list[5] != "") { option6.Text = option_list[5]; option6.Visible = true; }
                if (option_list[6] != "") { option7.Text = option_list[6]; option7.Visible = true; }
                if (option_list[7] != "") { option8.Text = option_list[7]; option8.Visible = true; }
                if (option_list[8] != "") { option9.Text = option_list[8]; option9.Visible = true; }
                if (option_list[9] != "") { option10.Text = option_list[9]; option10.Visible = true; }
                submit_vote.Visible = true;
            }
            else { 
            //show some sort of graph
            
            
            
            
            }

        }


        protected Boolean has_voted() {
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@post_id", post_id));
            p.Add(new SqlParameter("uid", (Guid)Session["uid"]));
            SqlDataReader reader = SqlUtil.ExecuteReader("select * from [poll_options] inner join [votes] on [poll_options].Option_ID=[Votes].Option_ID where [poll_options].BpostID=@post_id and [votes].ID_Num=@uid", p);
            while (reader.Read()) {
                Boolean report;
                if (reader.GetValue(0) != null)
                {

                    report = true;
                    reader.Close();
                    

                }
                else {
                    report = false;
                    reader.Close();
                   
                }

                return report;
            
            }

            reader.Close();
            return false;

            
            



        }

        protected void submit_vote_click(object sender, EventArgs e) {
            List<SqlParameter> p = new List<SqlParameter>();
            p.Add(new SqlParameter("@VoteID", Guid.NewGuid()));
            p.Add(new SqlParameter("@ID_Num", Session["uid"]));

            if (option1.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[0])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option2.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[1])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option3.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[2])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option4.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[3])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option5.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[4])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option6.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[5])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option7.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[6])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option8.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[7])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option9.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[8])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }
            else
                if (option10.Checked) { p.Add(new SqlParameter("@Option_ID", id_list[9])); SqlUtil.ExecuteNonQuery("insert into [Votes] values (@VoteID,@Option_ID,@ID_Num)", p); }

            Response.Redirect(Request.RawUrl);


        }

        protected void require_login() {

            if (Session["uid"] == null) {
                Response.Redirect("/login.aspx");
            
            }
        
        }

       


    }
}