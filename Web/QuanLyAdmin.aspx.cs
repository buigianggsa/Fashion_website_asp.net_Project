using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;

public partial class Web_Default : System.Web.UI.Page
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    NguoiDung nd = new NguoiDung();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblNgDK.Text = DateTime.Now.ToShortDateString();
        }
    }
    private void Gan()
    {
        nd.HoTen = txtHoTen.Text;
        nd.Username = txtUser.Text;
        nd.Password = txtPassword.Text;
        nd.DiaChi = txtDiaChi.Text;
        nd.DienThoai = txtDienThoai.Text;
        nd.Email = txtEmail.Text;
        nd.NgayDangKy = DateTime.Parse(lblNgDK.Text);
        nd.NgaySinh = DateTime.Parse(txtNgSinh.Text);
        nd.GioiTinh = int.Parse(ddlGioiTinh.SelectedValue);
        nd.idQuyen = int.Parse(ddlQuyen.SelectedValue);

    }
    private void clean()
    {
        txtHoTen.Text = "";
        txtNgSinh.Text = "";
        txtPassword.Text = "";
        txtUser.Text = "";
        txtDiaChi.Text = "";
        txtDienThoai.Text = "";
        txtEmail.Text = "";
        txtRpass.Text = "";
    }
    public string mahoa(string pass)
    {
        return FormsAuthentication.HashPasswordForStoringInConfigFile(pass.Trim(), "MD5");
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        List<NguoiDung> items = null;
        string user = txtUser.Text;
        items = db.NguoiDungs.Where(p => p.Username.Contains(user)).ToList();
        if (items.Count() == 0)
        {
            if (txtRpass.Text == txtPassword.Text)
            {
                Gan();
                string str = "insert into [NguoiDung] values(N'" +
                    nd.HoTen + "','" + nd.Username + "','" + mahoa(nd.Password) + "',N'" +
                    nd.DiaChi + "','" + nd.DienThoai + "','" + nd.Email + "','" +
                    nd.NgayDangKy + "','" + nd.NgaySinh + "'," + nd.GioiTinh + "," + nd.idQuyen + ")";
                SqlDataSource1.InsertCommand = str;
                SqlDataSource1.Insert();
                SqlDataSource1.DataBind();
                clean();
            }
            else if (txtRpass.Text != txtPassword.Text)
            {
                Response.Redirect("<script>alert('Retype password không trùng với type password!')</script>");
            }
        }
        else if (items.Count() != 0)
        {
            Response.Redirect("<script>alert('Tên đăng nhập này đã tồn tại')</script>");
        }
    }

    protected void btnHuy_Click(object sender, EventArgs e)
    {
        clean();
    }
}