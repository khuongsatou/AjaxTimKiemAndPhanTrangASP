using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FreeTextBoxDemo
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsumbit_OnClick(object sender, EventArgs e)
        {
            if (fileupload1.HasFile)
            {
                foreach (HttpPostedFile file in fileupload1.PostedFiles)
                {
                    string fileName = Path.GetFileName(fileupload1.PostedFile.FileName);
                    fileupload1.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                    Response.Redirect(Request.Url.AbsoluteUri);
                }
            }
        }
    }
}