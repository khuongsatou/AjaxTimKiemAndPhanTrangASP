using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace KtraASPX
{
    public class DataProvider
    {
        private static SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=dbKTra;Integrated Security=True");

        public static void connect()
        {
            if (conn.State == ConnectionState.Closed || conn.State == ConnectionState.Broken)
            {
                conn.Open();
            }
        }

        //Có Trả về 1 bảng -> Select
        public static DataTable getDataTable(string sQuery, SqlParameter[] param)
        {
            DataTable dt = new DataTable();
            try
            {
                connect();
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter adapter = new SqlDataAdapter();
                cmd.Connection = conn;
                cmd.CommandText = sQuery;
                cmd.Parameters.AddRange(param);
                adapter.SelectCommand = cmd;

                adapter.Fill(dt);
                conn.Close();
            }
            catch (Exception)
            {
                return null;
            }
            return dt;
        }
    }
}