using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class getSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TenTK"] !=null)
            {
                Label1.Text = Session["TenTK"].ToString();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

//            Phương thức Clear() chỉ xóa các cặp key - value của session nhưng vẫn tiếp tục sử dụng
//session đó, tức là SessionID không đổi.
            Session.Clear();

            //hủy và tạo lại 1 ID khác
            //Session.Abandon();
            
        }
    }
}