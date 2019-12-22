using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Khởi tạo
            HttpCookie c = new HttpCookie("TenTK");
            //Gán
            //c.Value = txtNhap.Text;
            c["TenTK"] = txtNhap.Text;
            c.Expires = DateTime.Now.AddDays(14);
            Response.Cookies.Add(c);

        }
    }
}