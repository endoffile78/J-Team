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
            List<SqlParameter> parameters = new List<SqlParameter>();
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT Position FROM [dbo].[Intern_Posting]");

            if (reader.Read())
            {
                collegedrop.DataSource = reader;
                collegedrop.DataTextField = "Position";
                collegedrop.DataValueField = "Position";
                collegedrop.DataBind();
                collegedrop.Items.Insert(0, new ListItem("Pick a college", "0"));
                collegedrop.SelectedIndex = 0;
            }
            reader.Close();
           
        }
        protected void post_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@Major", major.Text));
            parameters.Add(new SqlParameter("@Classification", classification.Text));
            parameters.Add(new SqlParameter("@Term", term.Text));
            parameters.Add(new SqlParameter("@Name", company.Text));
            parameters.Add(new SqlParameter("@Position", position.Text));
            parameters.Add(new SqlParameter("@Country", country.Text));
            parameters.Add(new SqlParameter("@State", state.Text));
            parameters.Add(new SqlParameter("@City", city.Text));
            parameters.Add(new SqlParameter("@Resources_Used", resources.Text));
            parameters.Add(new SqlParameter("@Long_Disc.", description.Text));
            parameters.Add(new SqlParameter("@Lessons_Learned", lessons.Text));
            parameters.Add(new SqlParameter("@Email", email.Text));
            parameters.Add(new SqlParameter("@Twitter", twitter.Text));
            parameters.Add(new SqlParameter("@LinkedIn", linkedIn.Text));
            parameters.Add(new SqlParameter("@Facebook", facebook.Text));
            parameters.Add(new SqlParameter("@Instagram", instagram.Text));
            int reader = SqlUtil.ExecuteNonQuery("INSERT INTO [dbo].[Intern_Posting] (Major,Classification,Term,Position,Resources_Used,Long_Disc.," +
                "Lessons_Learned,Email,Twitter, LinkedIn, Facebook, Instagram) " +
                "VALUES (@Major, @Classification, @Term,@Position,@Resources_Used,@Long_Disc.,@Lessons_Learned, @Email, @Twitter, @LinkedIn, " +
                "@Facebook,@Instagram)", parameters);
            //int reader2 = SqlUtil.ExecuteNonQuery("INSERT INTO User_Company(Name,Country, State, City) " +
            //    "VALUES(@Name,@Country,@State,@City)", parameters);
        }

        protected void country_Click(object sender, EventArgs e)
        {
            ////List<SqlParameter> parameters = new List<SqlParameter>();
            ////parameters.Add(new SqlParameter("@country", major.Text));
            ////SqlDataReader reader = SqlUtil.ExecuteReader("SELECT country FROM User_Company", parameters);
        }

        protected void collegedrop_Load(object sender, EventArgs e)
        {

        }
    }
}