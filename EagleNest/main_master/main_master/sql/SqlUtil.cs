using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace main_master.sql
{
    public class SqlUtil
    {

        private static SqlConnection conn;

        public static void init()
        {
            string connectionString = make_connection();
            conn = new SqlConnection(connectionString);
            conn.Open();
        }

        /*
         * Build the connection string from the config file
         */
        public static string make_connection()
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            access_database access = new access_database();
            builder.DataSource = access.get_server();
            builder.UserID = access.get_username();
            builder.Password = access.get_password();
            builder.InitialCatalog = access.get_name();
            return builder.ToString();
        }

        /*
         * Execute a query that doesnt return data such as INSERT and DELETE
         */
        public static int ExecuteNonQuery(string query, List<SqlParameter> parameters=null)
        {
            int rows = -1;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (parameters != null)
                {
                    cmd.Parameters.AddRange(parameters.ToArray());
                }
                rows = cmd.ExecuteNonQuery();
            }
            return rows;
        }

        /*
         * Execute a query that returns data like SELECT
         */
        public static SqlDataReader ExecuteReader(string query, List<SqlParameter> parameters=null)
        {
            SqlDataReader reader = null;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (parameters != null)
                {
                    cmd.Parameters.AddRange(parameters.ToArray());
                }
                reader = cmd.ExecuteReader();
            }
            return reader;
        }
        
        public static void destroy()
        {
            conn.Close();
        }
    }
}