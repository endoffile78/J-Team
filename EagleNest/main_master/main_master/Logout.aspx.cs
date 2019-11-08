using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] != null)
            {
                bool loggedIn = (bool) Session["loggedIn"];
                if (loggedIn)
                {
                    Session.Clear();
                    Session.Abandon();
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                }
            }

            Response.Redirect("Main.aspx");
        }
    }
}