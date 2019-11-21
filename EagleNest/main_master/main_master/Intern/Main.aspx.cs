using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using main_master.sql;

namespace main_master
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                List<SqlParameter> parameters = new List<SqlParameter>();
                SqlDataReader reader = SqlUtil.ExecuteReader("SELECT College FROM Intern_Posting", parameters);

                collegedrop.Items.Insert(0, new ListItem("Pick a college", "0"));
                collegedrop.SelectedIndex = 0;

                while (reader.Read()) {
                    string college = reader["College"].ToString();
                    collegedrop.Items.Add(new ListItem(college, college));
                }

                reader.Close();
            }           
        }
        protected void post_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@ID_Num", Session["uid"]));
            parameters.Add(new SqlParameter("@Major", major.Text));
            parameters.Add(new SqlParameter("@Classification", classification.Text));
            parameters.Add(new SqlParameter("@College", college.Text));
            parameters.Add(new SqlParameter("@Term", term.Text));
            parameters.Add(new SqlParameter("@Name", company.Text));
            parameters.Add(new SqlParameter("@Position", position.Text));
            parameters.Add(new SqlParameter("@Country", country.Text));
            parameters.Add(new SqlParameter("@State", state.Text));
            parameters.Add(new SqlParameter("@City", city.Text));
            parameters.Add(new SqlParameter("@Resources_Used", resources.Text));
            parameters.Add(new SqlParameter("@Long_Disc", description.Text));
            parameters.Add(new SqlParameter("@Lessons_Learned", lessons.Text));
            parameters.Add(new SqlParameter("@Twitter", twitter.Text));
            parameters.Add(new SqlParameter("@LinkedIn", linkedIn.Text));
            parameters.Add(new SqlParameter("@Facebook", facebook.Text));
            int reader = SqlUtil.ExecuteNonQuery("INSERT INTO Intern_Posting (ID_Num, Major, Classification, College, Term, Position, Resources_Used, [Long_Disc.]," +
                "Lessons_Learned, Twitter, LinkedIn, Facebook) " +
                "VALUES (@ID_NUm, @Major, @Classification,@College, @Term,@Position,@Resources_Used, @Long_Disc, @Lessons_Learned, @Twitter, @LinkedIn, " +
                "@Facebook)",parameters);
            //int reader2 = SqlUtil.ExecuteNonQuery("INSERT INTO User_Company(Name,Country, State, City) " +
            //    "VALUES(@Name,@Country,@State,@City)", parameters);
        }
    }
}