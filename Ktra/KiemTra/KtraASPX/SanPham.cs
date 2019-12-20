using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace KtraASPX
{
    public class SanPham
    {
        private int _id;
        private string _tenSP;
        private string _hinhAnh;
        private double _gia;

        public int Id { get => _id; set => _id = value; }
        public string TenSP { get => _tenSP; set => _tenSP = value; }
        public string HinhAnh { get => _hinhAnh; set => _hinhAnh = value; }
        public double Gia { get => _gia; set => _gia = value; }

        public SanPham()
        {
            _id = 0;
            _tenSP = "";
            _hinhAnh = "";
            _gia = 0;
        }

        public SanPham(int id, string tenSP, string hinhAnh, double gia)
        {
            _id = id;
            _tenSP = tenSP;
            _hinhAnh = hinhAnh;
            _gia = gia;
        }

        public List<SanPham> getList(string sQuery,SqlParameter[] param)
        {
            List<SanPham> sp = new List<SanPham>();
            DataTable dt = DataProvider.getDataTable(sQuery, param);
            foreach (DataRow dr in dt.Rows)
            {
                sp.Add(convertToObject(dr));
            }
            return sp;
        }

        private SanPham convertToObject(DataRow dr)
        {
            SanPham sp = new SanPham();
            sp.Id = Convert.ToInt32(dr["ID"]);
            sp.TenSP = dr["TenSP"].ToString();
            sp.HinhAnh = dr["HinhAnh"].ToString();
            sp.Gia =Convert.ToDouble(dr["Gia"].ToString());
            return sp;
        }

    }
}