using main_master.sql;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected List<Connect> views = new List<Connect>();
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
                    collegeCDrop.Items.Insert(0, new ListItem("Pick a college", "0"));
                    collegeCDrop.SelectedIndex = 0;

                    countryCDrop.Items.Insert(0, new ListItem("Pick a country", "0"));
                    countryCDrop.SelectedIndex = 0;

                    stateCDrop.Items.Insert(0, new ListItem("Pick a state", "0"));
                    stateCDrop.SelectedIndex = 0;

                    cityCDrop.Items.Insert(0, new ListItem("Pick a city", "0"));
                    cityCDrop.SelectedIndex = 0;

                    companyCDrop.Items.Insert(0, new ListItem("Pick a company", "0"));
                    companyCDrop.SelectedIndex = 0;

                    majorCDrop.Items.Insert(0, new ListItem("Pick a major", "0"));
                    majorCDrop.SelectedIndex = 0;

                    graduationCDrop.Items.Insert(0, new ListItem("Pick a position", "0"));
                    graduationCDrop.SelectedIndex = 0;

                    positionCDrop.Items.Insert(0, new ListItem("Pick a classification", "0"));
                    positionCDrop.SelectedIndex = 0;


                    SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM Job_Posting As a, Job_Posting As b WHERE a.ID_Num != b.ID_Num");

                    while (reader.Read())
                    {
                        Connect view = new Connect();
                        view.major = reader["Major"].ToString();
                        view.name = reader["Fname"] + " " + reader["Lname"];
                        view.college = reader["College"].ToString();
                        view.position = reader["Position"].ToString();
                        view.graduation = reader["Graduation"].ToString();
                        view.company = reader["Company"].ToString();
                        view.location = reader["City"].ToString() + "," + reader["State"].ToString() + "," + reader["Country"].ToString();
                        view.long_desc = reader["Long_Disc"].ToString();
                        view.resources = reader["Resources_Used"].ToString();
                        view.lessons = reader["Lessons_Learned"].ToString();
                        view.image = reader["Image"].ToString();
                        views.Add(view);
                    }
                    reader.Close();
                }
            }
        }
        protected void Cpost_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@uid", Session["uid"]));
            parameters.Add(new SqlParameter("@Fname", "Eagle"));
            parameters.Add(new SqlParameter("@Lname", "Archibald"));
            parameters.Add(new SqlParameter("@Major", major.Text));
            parameters.Add(new SqlParameter("@College", college.Text));
            parameters.Add(new SqlParameter("@Graduation", graduation.Text));
            parameters.Add(new SqlParameter("@Name", company.Text));
            parameters.Add(new SqlParameter("@Position", position.Text));
            parameters.Add(new SqlParameter("@Country", country.Text));
            parameters.Add(new SqlParameter("@State", state.Text));
            parameters.Add(new SqlParameter("@City", city.Text));
            parameters.Add(new SqlParameter("@Resources_Used", resources.Text));
            parameters.Add(new SqlParameter("@Long_Disc", description.Text));
            parameters.Add(new SqlParameter("@Lessons_Learned", lessons.Text));
            parameters.Add(new SqlParameter("@Industry", industry.Text));
            parameters.Add(new SqlParameter("@Twitter", twitter.Text));
            parameters.Add(new SqlParameter("@LinkedIn", linkedIn.Text));
            parameters.Add(new SqlParameter("@Facebook", facebook.Text));
            int row = SqlUtil.ExecuteNonQuery("INSERT INTO Job_Posting (ID_Num,Fname,Lname, Major,College, Graduation, " +
                "Position, Resources_Used,Long_Disc,Lessons_Learned,Industry, Twitter, LinkedIn, Facebook,Company,Country,State,City,Date) VALUES (@uid,@Fname,@Lname, @Major, " +
                "@College, @Graduation,@Position,@Resources_Used, @Long_Disc, @Lessons_Learned,@Industry, @Twitter, @LinkedIn, @Facebook,@Name,@Country,@State," +
                "@City,GETDATE())", parameters);
            
        }

        protected void countryCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Country FROM Job_Posting");

            while (reader.Read())
            {
                string country = reader["Country"].ToString();
                countryCDrop.Items.Add(new ListItem(country, country));
            }
            reader.Close();
        }

        protected void stateCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT State FROM Job_Posting");

            while (reader.Read())
            {
                string state = reader["State"].ToString();
                stateCDrop.Items.Add(new ListItem(state, state));
            }
            reader.Close();
        }

        protected void cityCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT City FROM Job_Posting");

            while (reader.Read())
            {
                string city = reader["City"].ToString();
                cityCDrop.Items.Add(new ListItem(city, city));
            }
            reader.Close();
        }

        protected void companyCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Company FROM Job_Posting");

            while (reader.Read())
            {
                string company = reader["Company"].ToString();
                companyCDrop.Items.Add(new ListItem(company, company));
            }
            reader.Close();
        }

        protected void majorCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Major FROM Job_Posting");

            while (reader.Read())
            {
                string major = reader["Major"].ToString();
                majorCDrop.Items.Add(new ListItem(major, major));
            }
            reader.Close();
        }

        protected void graduationCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Graduation FROM Job_Posting");

            while (reader.Read())
            {
                string graduation = reader["Graduation"].ToString();
                graduationCDrop.Items.Add(new ListItem(graduation, graduation));
            }
            reader.Close();
        }

        protected void collegeCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT College FROM Job_Posting");

            while (reader.Read())
            {
                string college = reader["College"].ToString();
                collegeCDrop.Items.Add(new ListItem(college, college));
            }
            reader.Close();
        }

        protected void positionCDrop_Load(object sender, EventArgs e)
        {
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT DISTINCT Position FROM Job_Posting");

            while (reader.Read())
            {
                string position = reader["Position"].ToString();
                positionCDrop.Items.Add(new ListItem(position, position));
            }
            reader.Close();
        }
    }
}