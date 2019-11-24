using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Moderation
{
    public partial class Main : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedIn"] == null)
            {
                Response.Redirect(ResolveUrl("~/Login.aspx"));
            }

            int user_type = Convert.ToInt32(Session["type"]);
            if (user_type == 2) //normal user dont allow
            {
                Response.Redirect(ResolveUrl("~/Main.aspx"));
            }
        }
    }
}