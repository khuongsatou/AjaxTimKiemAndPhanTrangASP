using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CKeditorDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)

        {
            string str = CKEditorControl1.Text;
            string str1 = Server.HtmlEncode(str);
            lblpre.Text = str1;
        }
    }
}