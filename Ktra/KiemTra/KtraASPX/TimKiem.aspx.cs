using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KtraASPX
{
    public partial class TimKiem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SanPham sp = new SanPham();
            string sQuery = "SELECT * FROM[SanPham] ";
            SqlParameter[] param = { };
            if (Request["key"] != null)
            {
                
            }
            int limit = 10;
            List<SanPham> lsp = sp.getList(sQuery, param);
            int count = lsp.Count;
            int soTrang = count / limit + (count % limit == 0 ? 0 : 1);
            int page = Request["page"] == null ? 1 : Convert.ToInt32(Request["page"]);
            int from = (page - 1) * limit;
            int to = (page * limit) - 1;
            for (int i = count - 1; i >= 0; i--)
            {
                // i < form ---- to < i
                if (i < from || to < i)
                {
                    lsp.RemoveAt(i);
                }
            }
            rptSanPham.DataSource = lsp;
            rptSanPham.DataBind();

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

    }
}
