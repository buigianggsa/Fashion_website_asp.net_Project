using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for clsThaoTac
/// </summary>
public class clsThaoTac
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    string conn = ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand com = null;
    SqlDataReader rd = null;
    public clsThaoTac()
    {
        
    }
    public void LoadLoaiSP(DropDownList ddl)
    {
        var c = from p in db.LoaiSPs select new { p.idLoai, p.TenLoai };
        ddl.DataSource = c;
        ddl.DataTextField = "TenLoai";
        ddl.DataValueField = "idLoai";
        ddl.DataBind();
    }

    public int SoLuongSP(int idSP)
    {
        con = new SqlConnection(conn);
        com = new SqlCommand("Select SoLuongTonKho from SanPham where idSP="+idSP, con);
        con.Open();
        int sl = (int)com.ExecuteScalar();
        con.Close();
        return sl;
    }
    public void LoadChiTietSP(int idSP, DataList dl)
    {
        var c = from p in db.SanPhams
                where p.idSP == idSP
                select new { p.TenSP, p.idSP, p.Gia, p.UrlHinh, p.MoTa };
        dl.DataSource = c;
        dl.DataBind();
    }
    public void LoadSPCL(int idSP, DataList dl)
    {
        var c = (from p in db.SanPhams
                 where p.idSP == idSP
                 select p.LoaiSP.idLoai).First();


        var t = from p in db.SanPhams
                where p.LoaiSP.idLoai == c
                select new { p.idSP, p.TenSP, p.Gia, p.UrlHinh };
        dl.DataSource = t; dl.DataBind();
    }
}