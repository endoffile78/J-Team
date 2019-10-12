using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace main_master
{
    public class access_database
    {
        private string username;
        private string password;
        private string server;
        private string name;

        public access_database() {
            pull_access_info();
        }

        private void pull_access_info() {
                string path = System.Web.HttpContext.Current.Server.MapPath(@"~/sql/access.config");
                string[] lines = System.IO.File.ReadAllLines(path);
                
                    username = lines[0];
                    password = lines[1];
                    server = lines[2];
                    name = lines[3];
        }
        public string get_username() {
            return username;

        }
        public string get_password()
        {
            return password;

        }
        public string get_server()
        {
            return server;

        }
        public string get_name()
        {
            return name;

        }

        
    }
}