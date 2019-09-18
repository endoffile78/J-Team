using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace main_master
{
    public partial class eagleboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            // testlit.Text = @"<table class=""table""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th> /thead> <tbody>" + @"< tr > < th scope = ""row"" >wwww</ th > < td >oooo</ td > < td >ijijijiji </ td > </ tr >" + "</tbody></table>";
            // testlit.Text = @"<table class=""table""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th> <th scope=""col"">Handle</th> </tr> </thead> <tbody> <tr> <th scope=""row"">1</th> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> <tr> <th scope=""row"">2</th> <td>Jacob</td> <td>Thornton</td> <td>@fat</td> </tr> <tr> <th scope=""row"">3</th> <td>Larry</td> <td>the Bird</td> <td>@twitter</td> </tr> </tbody> </table> <table class=""table""> <thead class=""thead-light""> <tr> <th scope=""col"">#</th> <th scope=""col"">First</th> <th scope=""col"">Last</th> <th scope=""col"">Handle</th> </tr> </thead> <tbody> <tr> <th scope=""row"">1</th> <td>Mark</td> <td>Otto</td> <td>@mdo</td> </tr> <tr> <th scope=""row"">2</th> <td>Jacob</td> <td>Thornton</td> <td>@fat</td> </tr> <tr> <th scope=""row"">3</th> <td>Larry</td> <td>the Bird</td> <td>@twitter</td> </tr> </tbody> </table>";

            testlit.Text = create_table_string();










        }


        string create_row(string link, string title, string board, DateTime date) {





            string row_string = @"<tr> <th scope=""row"">" + board + "</th> <td>" + title + "</td> <td>" + Convert.ToString(date) + "</td> </tr>";


            return row_string;





        }

        string create_table_string() {
            string title;
            string table_string = @"<table class=""table"" id= ""test""> <thead class=""thead-dark""> <tr> <th scope=""col"">Board</th> <th scope=""col"">Title</th> <th scope=""col"">Date</th></tr> </thead> <tbody>";
           
            for (int i = 0; i < 50; i++)
           {
                title = "this is post " + Convert.ToString(i);
               table_string = table_string + create_row("nothing", title, "Poll", DateTime.Now );
                
            }


            table_string = table_string +  "</tbody></table>";
            return table_string;

        }












    }
}