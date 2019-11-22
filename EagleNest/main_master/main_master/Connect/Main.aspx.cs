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

                    jobCDrop.Items.Insert(0, new ListItem("Pick a position", "0"));
                    jobCDrop.SelectedIndex = 0;

                    positionCDrop.Items.Insert(0, new ListItem("Pick a classification", "0"));
                    positionCDrop.SelectedIndex = 0;

                    SqlDataReader reader = SqlUtil.ExecuteReader("SELECT * FROM Job_Posting");

                    while (reader.Read())
                    {
                        countryCDrop.DataSource = reader["Country"];
                    }

                    reader.Close();
                }
            }
        }
        protected void post_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@major", major.Text));
            parameters.Add(new SqlParameter("@classification", classification.Text));
            parameters.Add(new SqlParameter("@term", term.Text));
            parameters.Add(new SqlParameter("@company", company.Text));
            parameters.Add(new SqlParameter("@position", position.Text));
            parameters.Add(new SqlParameter("@state", state.Text));
            parameters.Add(new SqlParameter("@city", city.Text));
            parameters.Add(new SqlParameter("@description", description.Text));
            parameters.Add(new SqlParameter("@lessons", lessons.Text));
            parameters.Add(new SqlParameter("@email", email.Text));
            parameters.Add(new SqlParameter("@twitter", twitter.Text));
            parameters.Add(new SqlParameter("@linkedIn", linkedIn.Text));
            parameters.Add(new SqlParameter("@facebook", facebook.Text));
            parameters.Add(new SqlParameter("@instagram", instagram.Text));
            parameters.Add(new SqlParameter("@phone", phone.Text));
            int reader = SqlUtil.ExecuteNonQuery("INSERT INTO User_Company (country,state,city,email) " +
                "VALUES (@country,@state,@city,@email)", parameters);
            int reader1 = SqlUtil.ExecuteNonQuery("INSERT INTO Job_Posting (position,Long_Disc,Skills_Req) " +
                "VALUES (@position,@description,@lessons)", parameters);
            
        }
    }
}