using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class getCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["TenTK"];
            if (c != null)
            {
                string user = c["TenTK"];
                //string user = c.Value;
                Label1.Text = user;
            }
        }
    }
}