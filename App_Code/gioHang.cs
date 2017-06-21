using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for gioHang
/// </summary>
public class gioHang
{
    private DataTable data;

    public List<Item> danhsach = new List<Item>();
    public int TongSP
    {
        get;
        set;
    }
    public float TongTien
    {
        get;
        set;

    }

    public DataTable Data
    {
        get
        {
            return data;
        }

        set
        {
            data = value;
        }
    }

    public gioHang()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public Item LuaChon(int chiSo)
    {
        return danhsach[chiSo];
    }

    //Them mot gio hang
    public void AddToGioHang(Item add)
    {
        bool daco = false;
        foreach (Item it in danhsach)

            if (it.MaSP == add.MaSP)
            {
                it.SoLuong += add.SoLuong;
                it.Size = add.Size;
                daco = true;
                break;
            }
        if (daco == false)
            danhsach.Add(add);

    }
    public int getItem()
    {
        int items = danhsach.Count();
        return items;
    }
    public void XoaItem(int MaSP)
    {
        foreach (Item it in danhsach)
            if (it.MaSP == MaSP)
                danhsach.Remove(it);
    }

    public DataTable veBang()
    {
        TongSP = 0;
        TongTien = 0;
        Data = new DataTable();
        Data.Columns.Add("MaSP");
        Data.Columns.Add("TenSP");
        Data.Columns.Add("SoLuong");
        Data.Columns.Add("Size");
        Data.Columns.Add("Gia");
        Data.Columns.Add("ThanhTien");

        foreach (Item it in danhsach)
        {
            DataRow dr = Data.NewRow();
            dr["MaSP"] = it.MaSP;
            dr["SoLuong"] = it.SoLuong;
            dr["Size"] = it.Size;
            
            DataSet ds = new DataSet();
            ds = LayThongTinSanPham(it.MaSP, it.SoLuong);
            dr["TenSP"] = ds.Tables[0].Rows[0]["TenSP"].ToString();
            dr["Gia"] = ds.Tables[0].Rows[0]["Gia"].ToString();
            int tt = it.SoLuong*(int.Parse(dr["Gia"].ToString()));
            dr["ThanhTien"]  = tt;
            Data.Rows.Add(dr);
            TongSP += it.SoLuong;
            TongTien += tt;
        }
        return Data;
    }


    public DataSet LayThongTinSanPham(int MaSP, int SoLuong)
    {
        string strcon = ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;
        cmd.CommandText = @"SELECT idSP, TenSP, Gia FROM SanPham where idSP = " + MaSP;

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        cn.Open();
        da.Fill(ds);
        cn.Close();
        return ds;
    }

}
