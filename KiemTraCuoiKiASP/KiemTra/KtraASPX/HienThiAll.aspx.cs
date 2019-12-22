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
    public partial class HienThiAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SanPham sp = new SanPham();
            string sQuery = "SELECT * FROM[SanPham] ";
            SqlParameter[] param = {};
            sQuery += " ORDER BY[Gia] ASC";
            
            rptSanPham.DataSource = sp.getList(sQuery, param);
            rptSanPham.DataBind();
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            Response.Redirect("HienThiAll.aspx?tensp=" + txtTenSP.Text + "&giatu=" + txtGiaTu.Text + "&giaden=" + txtGiaDen.Text + "");
        }
    }
}