using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using main_master.sql;
using System.Data;

namespace main_master
{
    public partial class eagleboard : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            build_data();

        }

        protected void preview_give_button_click(object sender, EventArgs e)
        {
            if (Page.IsValid) {
                System.IO.Stream fs = give_image_upload.PostedFile.InputStream;
                System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                string str = Convert.ToBase64String(bytes, 0, bytes.Length);
                Session.Add("title", give_title_textbox.Text);
                Session.Add("description", give_desc_textbox.Text);
                Session.Add("image", str);
                Response.Redirect("new_post.aspx");


            }


        }

        void convert_rows_to_string_and_publish(ref List<data_row> data_rows)
        {


            string table_string_all = @"<table class=""table"" id= ""all_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
            string table_string_gives = @"<table class=""table"" id= ""gives_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
            string table_string_project = @"<table class=""table"" id= ""project_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
            string table_string_poll = @"<table class=""table"" id= ""poll_board""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";

            foreach (data_row r in data_rows)
            {
                table_string_all = table_string_all + r.get_row_string();
                if (r.get_board_id().CompareTo("gives_board") == 0) { table_string_gives = table_string_gives + r.get_row_string(); }
                else if (r.get_board_id().CompareTo("project_board") == 0) { table_string_project = table_string_project + r.get_row_string(); }
                else if (r.get_board_id().CompareTo("poll_board") == 0) { table_string_poll = table_string_poll + r.get_row_string(); }
            }
            table_string_all = table_string_all + "</tbody></table>";
            table_string_gives = table_string_gives + "</tbody></table>";
            table_string_project = table_string_project + "</tbody></table>";
            table_string_poll = table_string_poll + "</tbody></table>";

            all_lit.Text = table_string_all;
            gives_lit.Text = table_string_gives;
            project_lit.Text = table_string_project;
            poll_lit.Text = table_string_poll;

        }


        void build_data()
        { 
            string query = "select * from [Board_Post]";
            SqlDataReader reader = SqlUtil.ExecuteReader(query);
            List<data_row> all_rows = new List<data_row>();
            string board = "";
            while (reader.Read())
            {
                if (reader.GetByte(4)== 0) {
                    board = "gives_board";
                } else
                if (reader.GetByte(4) == 1)
                {
                    board = "project_board";
                } else
                    if (reader.GetByte(4) == 2)
                {
                    board = "poll_board";
                }

                all_rows.Add(new data_row(board, reader.GetString(2), reader.GetDateTime(5), "http:this"));
                
            }

            reader.Close();
            convert_rows_to_string_and_publish(ref all_rows);


        }


        class data_row
        {
            const string poll_title = "Poll";
            const string project_title = "Project";
            const string gives_title = "Gives";
            string board_id;
            string board;
            string title;
            DateTime date;
            string row_string = "";
            string link;

            public data_row(string in_board_id, string in_title, DateTime in_date, string in_link)
            {
                title = in_title;
                date = in_date;
                link = in_link;
                board_id = in_board_id;
                if (board_id.CompareTo("gives_board") == 0) { board = gives_title; }
                else if (board_id.CompareTo("project_board") == 0) { board = project_title; }
                else if (board_id.CompareTo("poll_board") == 0) { board = poll_title; }
            }

            public string get_row_string()
            {
                row_string = @"<tr> <th scope=""row"">" + board + "</th> <td>" + title + "</td> <td>" + Convert.ToString(date) + "</td> </tr>";
                //creates a row of a bootstrap table in html
                return row_string;
            }

            public string get_board_id()
            {
                return board_id;
            }

        }
    }
}