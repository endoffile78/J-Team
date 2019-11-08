using main_master.sql;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace main_master
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void submit_Click(object sender, EventArgs e)
        {
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@email", email.Text));
            parameters.Add(new SqlParameter("@password", password.Text)); //TODO: hash the password
            SqlDataReader reader = SqlUtil.ExecuteReader("SELECT ID_Num FROM User_Main WHERE Email = @email AND Password = @password", parameters);
            if (reader.Read())
            {
                Guid uid = reader.GetGuid(0);
                Session.Add("uid", uid);
                Session.Add("loggedIn", true);
                reader.Close();
                Response.Redirect("Main.aspx");   
            }
            reader.Close();
        }
    }
}