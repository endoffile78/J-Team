using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace main_master.sql
{
    public class SqlUtil
    {
        public static SqlConnectionStringBuilder make_connection()
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            access_database access = new access_database();
            builder.DataSource = access.get_server();
            builder.UserID = access.get_username();
            builder.Password = access.get_password();
            builder.InitialCatalog = access.get_name();
            return builder;
        }
    }
}