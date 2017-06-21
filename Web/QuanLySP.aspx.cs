using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Web_Default : System.Web.UI.Page
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    SanPham sp = new SanPham();
    String conn = ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand com = null;
    DataTable dt = null;
    SqlDataAdapter da = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblNgCN.Text = DateTime.Now.ToShortDateString();
        }
    }
    private void Gan()
    {
        sp.idLoai = int.Parse(ddlIDL.SelectedValue);
        sp.idCL = int.Parse(ddlIDCL.SelectedValue);
        sp.TenSP = txtTenSP.Text;
        sp.MoTa = txtMoTa.Text;
        sp.NgayCapNhat = DateTime.Parse(lblNgCN.Text);
        sp.Size = ddlSize.Text;
        sp.Gia =int.Parse( txtGia.Text);
        sp.UrlHinh = fulHinh.FileName;
        sp.SoLuongTonKho = int.Parse(txtSLTon.Text);
        sp.GhiChu = txtGhiChu.Text;
        sp.AnHien = int.Parse(ddlAnHienSP.SelectedValue);
    }
    private void clean()
    {
        txtTenSP.Text = "";
        txtMoTa.Text = "";
        txtGhiChu.Text = "";
        txtSLTon.Text = "";
        txtGia.Text = "";
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Gan();
        if (Page.IsValid && fulHinh.HasFile)
        {
            string str = "Insert into SanPham values (" + sp.idLoai + "," + sp.idCL + ",N'"
                + sp.TenSP + "',N'" + sp.MoTa + "','" + sp.NgayCapNhat + "','"+sp.Size+"'," + sp.Gia
                + ",'" + sp.UrlHinh + "'," + sp.SoLuongTonKho + ",N'" + sp.GhiChu + "'," + sp.AnHien + ")";
            SqlDataSource1.InsertCommand = str;
            SqlDataSource1.Insert();
            SqlDataSource1.DataBind();
            string fileName = "~/Image/AnhSP/" + sp.UrlHinh;
            string filePath = MapPath(fileName);
            fulHinh.SaveAs(filePath);
            clean();
        }
        
    }

    protected void btnHuy_Click(object sender, EventArgs e)
    {
        clean();
    }

}