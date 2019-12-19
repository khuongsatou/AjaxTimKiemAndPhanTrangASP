using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidateJQuery
{
    public partial class Default7_Fix_Group : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Record submmitted.')", true);
        }
    }
}