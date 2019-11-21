using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master.Board
{
    public partial class new_post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           new_post_title.Text = Session["title"].ToString();
            new_post_description.Text = Session["description"].ToString();
           
        }
    }
}
