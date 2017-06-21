using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Default : System.Web.UI.Page
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    LienHe lh = new LienHe();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void clean()
    {
        txtHoTen.Text = "";
        txtEmail.Text = "";
        txtSoDT.Text = "";
        txtDiaChi.Text = "";
        txtChuDe.Text = "";
        txtNoiDung.Text = "";
    }
    protected void btnGuiLienHe_Click(object sender, EventArgs e)
    {
        lh.HoTen = txtHoTen.Text;
        lh.Email = txtEmail.Text;
        lh.SDT = txtSoDT.Text;
        lh.DiaChi = txtDiaChi.Text;
        lh.ChuDe = txtChuDe.Text;
        lh.NoiDung = txtNoiDung.Text;
        db.LienHes.InsertOnSubmit(lh);
        db.SubmitChanges();
        clean();

    }

    protected void btnHuy_Click(object sender, EventArgs e)
    {
        clean();
    }
}