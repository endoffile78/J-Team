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

                    jobDrop.Items.Insert(0, new ListItem("Pick a position", "0"));
                    jobDrop.SelectedIndex = 0;

                    classificationDrop.Items.Insert(0, new ListItem("Pick a classification", "0"));
                    classificationDrop.SelectedIndex = 0;

                    SqlDataReader reader = SqlUtil.ExecuteReader("SELECT User_Main.Fname,User_Main.Lname FROM Intern_Posting"
                        +" INNER JOIN User_Main ON User_Main.ID_Num = Intern_Posting.ID_Num");

                    while (reader.Read())
                    {
                        intern view = new intern();
                        view.major = reader["Major"].ToString();
                        view.name = reader["Fname"]+""+reader["Lname"];
                        view.classification = reader["Classification"].ToString();
                        view.position = reader["Position"].ToString();
                        views.Add(view);
                    }

                    reader.Close();

                    SqlDataReader reader1 = SqlUtil.ExecuteReader("SELECT * FROM User_Company");

                    while (reader1.Read())
                    {
                        intern view = new intern();
                        view.company = reader1["Company"].ToString();
                        view.city = reader1["City"].ToString();
                        view.state = reader1["State"].ToString();
                        view.country = reader1["Country"].ToString();
                        views.Add(view);
                    }

                    reader1.Close();
                }
            }
        }
        protected void post_Click(object sender, EventArgs e)
        {
            Guid CompanyID = Guid.NewGuid();
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@uid", Session["uid"]));
            parameters.Add(new SqlParameter("@CompanyID", CompanyID));
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
            int row = SqlUtil.ExecuteNonQuery("INSERT INTO Intern_Posting (ID_Num,CompanyID, Major, Classification, College, Term, " +
                "Position, Resources_Used,Long_Disc.,Lessons_Learned, Twitter, LinkedIn, Facebook) VALUES (@uid,@CompanyID, @Major, " +
                "@Classification,@College, @Term,@Position,@Resources_Used, @Long_Disc, @Lessons_Learned, @Twitter, @LinkedIn, @Facebook)",parameters);
            int reader2 = SqlUtil.ExecuteNonQuery("INSERT INTO User_Company (CompanyID,Name,Country,State,City) " +
                "VALUES(@CompanyID,@Name,@Country,@State,@City)", parameters);
        }
    }
}