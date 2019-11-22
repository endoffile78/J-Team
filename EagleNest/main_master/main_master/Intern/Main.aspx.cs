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
        protected List<intern> views = new List<intern>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] == null) //TODO: tell the user they need to login
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    collegedrop.Items.Insert(0, new ListItem("Pick a college", "0"));
                    collegedrop.SelectedIndex = 0;

                    countryDrop.Items.Insert(0, new ListItem("Pick a country", "0"));
                    countryDrop.SelectedIndex = 0;

                    stateDrop.Items.Insert(0, new ListItem("Pick a state", "0"));
                    stateDrop.SelectedIndex = 0;

                    cityDrop.Items.Insert(0, new ListItem("Pick a city", "0"));
                    cityDrop.SelectedIndex = 0;

                    companyDrop.Items.Insert(0, new ListItem("Pick a company", "0"));
                    companyDrop.SelectedIndex = 0;

                    majorDrop.Items.Insert(0, new ListItem("Pick a major", "0"));
                    majorDrop.SelectedIndex = 0;

                    termDrop.Items.Insert(0, new ListItem("Pick a position", "0"));
                    termDrop.SelectedIndex = 0;

                    classificationDrop.Items.Insert(0, new ListItem("Pick a classification", "0"));
                    classificationDrop.SelectedIndex = 0;



                    SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM Intern_Posting As a, Intern_Posting As b WHERE a.ID_Num != b.ID_Num");

                    while (reader.Read())
                    {
                        intern view = new intern();
                        view.major = reader["Major"].ToString();
                        view.name = reader["Fname"]+" "+reader["Lname"];
                        view.classification = reader["Classification"].ToString();
                        view.position = reader["Position"].ToString();
                        view.company = reader["Company"].ToString();
                        view.location = reader["City"].ToString() + "," + reader["State"].ToString() + "," + reader["Country"].ToString();
                        view.long_desc = reader["Long_Disc"].ToString();
                        view.resources = reader["Resources_Used"].ToString();
                        view.lessons = reader["Lessons_Learned"].ToString();
                        views.Add(view);
                    }

                    reader.Close();
                }
            }
        }
        protected void post_Click(object sender, EventArgs e)
        {
            //Guid CompanyID = Guid.NewGuid();
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@uid", Session["uid"]));
            parameters.Add(new SqlParameter("@Fname", "Eagle"));
            parameters.Add(new SqlParameter("@Lname", "Archibald"));
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
            int row = SqlUtil.ExecuteNonQuery("INSERT INTO Intern_Posting (ID_Num,Fname,Lname, Major, Classification, College, Term, " +
                "Position, Resources_Used,Long_Disc,Lessons_Learned, Twitter, LinkedIn, Facebook,Company,Country,State,City,Date) VALUES (@uid,@Fname,@Lname, @Major, " +
                "@Classification,@College, @Term,@Position,@Resources_Used, @Long_Disc, @Lessons_Learned, @Twitter, @LinkedIn, @Facebook,@Name,@Country,@State," +
                "@City,GETDATE())", parameters);
            
        }

        protected void countryDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Country FROM Intern_Posting");

            while (reader.Read())
            {
                string country = reader["Country"].ToString();
                countryDrop.Items.Add(new ListItem(country, country));
            }
            reader.Close();
        }

        protected void stateDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT State FROM Intern_Posting");

            while (reader.Read())
            {
                string state= reader["State"].ToString();
                stateDrop.Items.Add(new ListItem(state, state));
            }
            reader.Close();
        }

        protected void cityDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT City FROM Intern_Posting");

            while (reader.Read())
            {
                string city = reader["City"].ToString();
                cityDrop.Items.Add(new ListItem(city, city));
            }
            reader.Close();
        }

        protected void companyDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Company FROM Intern_Posting");

            while (reader.Read())
            {
                string company = reader["Company"].ToString();
                companyDrop.Items.Add(new ListItem(company, company));
            }
            reader.Close();
        }

        protected void majorDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Major FROM Intern_Posting");

            while (reader.Read())
            {
                string major = reader["Major"].ToString();
                majorDrop.Items.Add(new ListItem(major, major));
            }
            reader.Close();
        }

        protected void termDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Term FROM Intern_Posting");

            while (reader.Read())
            {
                string term = reader["Term"].ToString();
                termDrop.Items.Add(new ListItem(term, term));
            }
            reader.Close();
        }

        protected void collegedrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT College FROM Intern_Posting");

            while (reader.Read())
            {
                string college = reader["College"].ToString();
                collegedrop.Items.Add(new ListItem(college, college));
            }
            reader.Close();
        }

        protected void classificationDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Classification FROM Intern_Posting");

            while (reader.Read())
            {
                string classification = reader["Classification"].ToString();
                classificationDrop.Items.Add(new ListItem(classification, classification));
            }
            reader.Close();
        }
    }
}