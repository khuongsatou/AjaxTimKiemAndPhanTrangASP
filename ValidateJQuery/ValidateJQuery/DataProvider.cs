using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ValidateJQuery
{
    public class DataProvider
    {
        public static SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=db;Integrated Security=True");
        public static DataTable excuteQuery(string sQuery,SqlParameter[] sParam)
        {
            DataTable dt = new DataTable();
            try
            {
                conn.Open();
                
                SqlCommand cmd = new SqlCommand(sQuery, conn);
                cmd.Parameters.AddRange(sParam);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);
                conn.Close();
            }
            catch (Exception)
            {
                return null;
                throw;
            }
            return dt;

        }

        

    }
}