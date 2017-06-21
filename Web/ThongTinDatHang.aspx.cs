using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Web_Default : System.Web.UI.Page
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    string conn=ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand com = null;
    clsThaoTac tt = new clsThaoTac();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gioHang gh = new gioHang();
            gh = (gioHang)Session["GioHang"];

            rptDH.DataSource = gh.veBang();
            rptDH.DataBind();
            ltrTongSP.Text = " " + gh.TongSP;
            ltrTongTien.Text = " " + gh.TongTien;
        }
    }

    private void Xoa()
    {
        txtHoTen.Text = "";
        txtDiaChi.Text = "";
        txtSoDT.Text = "";
        txtEmail.Text = "";
   
    }
    public int laySL(int i)
    {
        gioHang gio = (gioHang)Session["GioHang"];
        int idSP=int.Parse(gio.Data.Rows[i][0].ToString());
        int slm= int.Parse(gio.Data.Rows[i][2].ToString());
        con = new SqlConnection(conn);
        com = new SqlCommand("Select SoLuongTonKho from SanPham where idSP=" + idSP, con);
        com.CommandType = System.Data.CommandType.Text;
        con.Open();
        int sl = (int)com.ExecuteScalar()-slm;
        con.Close();
        return sl;
        
    }
    public void UpdateSL(int i)
    {
        int sl = laySL(i);
        gioHang gio = (gioHang)Session["GioHang"];
        int idSP = int.Parse(gio.Data.Rows[i][0].ToString());
        con = new SqlConnection(conn);
        com = new SqlCommand("Update SanPham set SoLuongTonKho=" + sl + " where idSP=" + idSP, con);
        com.CommandType = System.Data.CommandType.Text;
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
    public void ThemDonHang()
    {
        
        DonHang or = new DonHang();
        or.ThoiDiemDatHang = DateTime.Now;
        or.DiaChiGiaoHang = txtDiaChi.Text;
        or.SoDT = txtSoDT.Text;
        or.Email = txtEmail.Text;
        or.TenNguoiNhan = txtHoTen.Text;
        or.TinhTrang = 0;
        db.DonHangs.InsertOnSubmit(or);
        db.SubmitChanges();

        var c = from p in db.DonHangs
                select p.idDHang;

        gioHang gio = (gioHang)Session["GioHang"];
        for (int i = 0; i < gio.Data.Rows.Count; i++)
        {
            UpdateSL(i);
            ChiTietDonHang dto = new ChiTietDonHang();
            int idHD = 0;
            foreach (var con in c)
            {
                idHD = con;

            }
            dto.idDHang = idHD;
            dto.idSP = int.Parse(gio.Data.Rows[i][0].ToString());
            dto.Size = gio.Data.Rows[i][3].ToString();
            dto.SoLuong = int.Parse(gio.Data.Rows[i][2].ToString());
            dto.Gia = int.Parse(gio.Data.Rows[i][5].ToString());
            db.ChiTietDonHangs.InsertOnSubmit(dto);
            db.SubmitChanges();

        }
    }
    protected void btnHoanThanh_Click(object sender, EventArgs e)
    {
        ThemDonHang();
        Xoa();
        Response.Redirect("HoanThanh.aspx");
    }

    protected void btnQuayLai_Click(object sender, EventArgs e)
    {
        Response.Redirect("GioHang.aspx");
    }
}