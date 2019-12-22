﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class Default1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnDisPlay_Click(object sender, EventArgs e)
        {
            lblDisplay.Text = ViewState["name"].ToString();
        }
      
        protected void btnClear_Click(object sender, EventArgs e)
        {

            ViewState["name"] = txtNhap.Text;
            txtNhap.Text = "";
        }
    }
}