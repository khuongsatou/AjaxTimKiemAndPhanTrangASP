using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;

namespace ValidateJQuery
{
    public partial class DictionaryKeyValue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Click1(object sender, EventArgs e)
        {
            //chính nó
            Dictionary<string, object> sinhviens = new Dictionary<string, object>();
            sinhviens.Add("ten", "khuong1");
            sinhviens.Add("tuoi", "1231");
            Response.Write(sinhviens["ten"]+"|"+ sinhviens["tuoi"]);
        }

        protected void Click2(object sender, EventArgs e)
        {
            //cha nó
            IDictionary<int, string> dict = new Dictionary<int, string>();
            dict.Add(1, "one2");
            dict.Add(2, "two2");
            dict.Add(3, "three2");
            Response.Write(dict[1] + "|" + dict[2] +"|"+ dict[3]);
        }

        protected void Click3(object sender, EventArgs e)
        {
            //cha nó
            IDictionary<int, string> dict = new Dictionary<int, string>()
            {
                {1, "one3" },
                {2, "two3" },
                {3, "three3" },

            };
            Response.Write(dict[1] + "|" + dict[2] + "|" + dict[3]);
        }

        protected void Click4(object sender, EventArgs e)
        {
            //cha nó
            IDictionary<int, string> dict = new Dictionary<int, string>()
            {
                {1, "one4" },
                {2, "two4" },
                {3, "three4" },

            };
            foreach (KeyValuePair<int,string> item in dict)
            {
                string result = string.Format("key:{0},value:{1}"+"<br>", item.Key, item.Value);
                Response.Write(result);
            }
            
        }

        protected void Click5(object sender, EventArgs e)
        {
            //cha nó
            IDictionary<int, string> dict = new Dictionary<int, string>()
            {
                {1, "one5" },
                {2, "two5" },
                {3, "three5" },

            };
            for (int i = 0; i < dict.Count; i++)
            {
                string result = string.Format("key:{0},value:{1}" + "<br>", dict.Keys.ElementAt(i), dict.Values.ElementAt(i));
                Response.Write(result);
            }
        }
        protected void Click6(object sender, EventArgs e)
        {
            //cha nó
            IDictionary<int, string> dict = new Dictionary<int, string>()
            {
                {1, "one6" },
                {2, "two6" },
                {3, "three6" },

            };
            string result = string.Format("key:{0},value:{1}" + "<br>", dict[1], dict[3]);

            Response.Write(result);

        }

        protected void Click7(object sender, EventArgs e)
        {
            //cha nó
            IDictionary<int, string> dict = new Dictionary<int, string>()
            {
                {1, "one7" },
                {2, "two7" },
                {3, "three7" },

            };

            string result = "";
            if (dict.TryGetValue(2,out result))
            {
                Response.Write(result);
            }
            else
            {
                Response.Write("Không tìm thấy");
            }
        }

        protected void Click8(object sender, EventArgs e)
        {
            //cha nó
            IDictionary<int, string> dict = new Dictionary<int, string>()
            {
                {1, "one8" },
                {2, "two8" },
                {3, "three8" },

            };

            Response.Write(dict.ContainsKey(1)+"");
            Response.Write(dict.ContainsKey(4)+"");
            Response.Write(dict.Contains(new KeyValuePair<int, string>(1, "one8")));

        }

        protected void Click9(object sender, EventArgs e)
        {
            List<Dictionary<string, object>> arrobject = new List<Dictionary<string, object>>();
            //arrobject.Add(new sanpham(1,"123"));
            Dictionary<string,object> obj = new Dictionary<string, object>();
            Dictionary<string,object> success = new Dictionary<string, object>();
            obj.Add("objkey1", new sanpham(1,"sp1"));
            obj.Add("objkey2", new sanpham(2,"sp2"));
            obj.Add("objkey3", new sanpham(3,"sp3"));

            success.Add("success1", new String[]{"1","2","3"});
            arrobject.Add(obj);
            arrobject.Add(success);
            Response.Write(new JavaScriptSerializer().Serialize(arrobject));
        }

        public class sanpham {
            public int id;
            public string name;

            public sanpham(int id, string name)
            {
                this.id = id;
                this.name = name;
            }
        }
    }
}