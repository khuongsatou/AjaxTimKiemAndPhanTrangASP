using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidateJQuery
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string searchCode(string key,string page)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=db;Integrated Security=True");
            conn.Open();
            string sQuery = "SELECT * FROM [tbSanPham] ";
            SqlCommand cmd = new SqlCommand(sQuery, conn);
            if (key != null && key.Length > 0)
            {
                sQuery += " WHERE (([TenSP] LIKE '%' + @TenSP + '%') OR ([GiaSP] LIKE '%' + @GiaSP + '%')) ORDER BY GiaSP DESC";
                SqlParameter[] sparam =
                {
                    new SqlParameter("@TenSP",key),
                    new SqlParameter("@GiaSP",key)
                };
                cmd.Parameters.AddRange(sparam);
                cmd.CommandText = sQuery;
            }

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            int limit = 5;
            int soTrang = dt.Rows.Count / limit + (dt.Rows.Count % limit == 0 ? 0 : 1);
            int page1 = (page == null) ? 1 :Convert.ToInt32(page);
            int from = (page1 - 1) * limit;
            int to = (page1 * limit) - 1;

            for (int i = dt.Rows.Count - 1; i >= 0; i--)
            {
                // i < from ----- to < i
                if (i < from || to < i)
                {
                    dt.Rows.RemoveAt(i);
                }
            }
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            string[] result = new string[soTrang];
            for (int i = 0; i < soTrang; i++)
            {
                result[i] = i.ToString();
            }
            Dictionary<string, object> json = new Dictionary<string, object>();
            json.Add("obj", rows);
            json.Add("record", result);
            return new JavaScriptSerializer().Serialize(json);
        }

    }
}