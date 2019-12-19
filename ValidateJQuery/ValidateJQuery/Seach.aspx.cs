using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidateJQuery
{
    public partial class Seach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=db;Integrated Security=True");
            conn.Open();
            string sQuery = "SELECT * FROM [tbSanPham] ";
            SqlCommand cmd = new SqlCommand(sQuery,conn);
            if (Request["key"] != null)
            {
                sQuery += " WHERE (([TenSP] LIKE '%' + @TenSP + '%') OR ([GiaSP] LIKE '%' + @GiaSP + '%')) ORDER BY GiaSP DESC";
                SqlParameter[] sparam =
                {
                    new SqlParameter("@TenSP",Request["key"]),
                    new SqlParameter("@GiaSP",Request["key"])
                };
                cmd.Parameters.AddRange(sparam);
                cmd.CommandText = sQuery;
            }
            
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);

            int limit = 5;
            int soTrang = dt.Rows.Count / limit + (dt.Rows.Count % limit == 0 ? 0 : 1);
            int page = Request["page"] == null ? 1 : Convert.ToInt32(Request["page"]);
            int from = (page - 1) * limit;
            int to = (page * limit) - 1;

            for (int i = dt.Rows.Count-1; i >= 0; i--)
            {
                // i < from ----- to < i
                if (i< from || to < i)
                {
                    dt.Rows.RemoveAt(i);
                }
            }

            DataList1.DataSource = dt;
            DataList1.DataBind();

            DataTable dtp = new DataTable();
            dtp.Columns.Add("index");
            dtp.Columns.Add("active");
            for (int i = 1; i <= soTrang; i++)
            {
                DataRow dr = dtp.NewRow();
                dr["index"] = i;
                if ((Request["page"] == null && i == 1) || (Request["page"] != null && i == page))
                {
                    dr["active"] = 1;
                }
                else
                {
                    dr["active"] = 0;
                }
                dtp.Rows.Add(dr);
            }
            Repeater1.DataSource = dtp;
            Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Seach.aspx?key=" + TextBox1.Text);
        }

        [WebMethod]
        public static string searchCode(string key)
        {
            return key+"d";
        }
        
    }
}