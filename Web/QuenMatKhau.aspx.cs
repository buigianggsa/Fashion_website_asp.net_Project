using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Web_Default : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand com = null;
    SqlDataReader rd = null;
    NguoiDung nd = new NguoiDung();
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void Gan()
    {
        nd.HoTen = txtHoTen.Text;
        nd.Username = txtUser.Text;
        nd.DiaChi = txtDiaChi.Text;
        nd.DienThoai = txtDienThoai.Text;
        nd.Email = txtEmail.Text;
        nd.NgaySinh = DateTime.Parse(txtNgaySinh.Text);
        nd.Password = txtNewPass.Text;

    }
    private void clean()
    {
        txtNewPass.Text = "";
        txtNgaySinh.Text = "";
        txtRNPass.Text = "";
        txtUser.Text = "";
        txtDiaChi.Text = "";
        txtDienThoai.Text = "";
        txtEmail.Text = "";
        txtHoTen.Text = "";
    }
    public string mahoa(string pass)
    {
        return FormsAuthentication.HashPasswordForStoringInConfigFile(pass.Trim(), "MD5");
    }
    private bool DoiMK()
    {
        Gan();
        con = new SqlConnection(conn);
        com = new SqlCommand("select * from NguoiDung  where HoTen=N'"
            +nd.HoTen+"' and Username='"+nd.Username+
            "' and DiaChi=N'"+nd.DiaChi+"' and DienThoai='"+
            nd.DienThoai+"' and Email='"+nd.Email+"' and NgaySinh='"
            +nd.NgaySinh+"'", con);
        com.CommandType = System.Data.CommandType.Text;
        con.Open();
        rd = com.ExecuteReader();
        bool kt = rd.Read();
        con.Close();
        return kt;

    }
    protected void imbYeuCau_Click(object sender, ImageClickEventArgs e)
    {
        Gan();
        if (DoiMK())
        {
            if ((txtNewPass.Text).Equals(txtRNPass.Text)) {
                con = new SqlConnection(conn);
                com = new SqlCommand("Update NguoiDung set Password='"+mahoa(nd.Password)+"' where Username='"+nd.Username+"'", con);
                com.CommandType = System.Data.CommandType.Text;
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                clean();
                Response.Redirect("DangNhap.aspx");
            }
            else
            {
                Response.Write("<script>alert('Password mới không trùng với retype password!')</script>");
            }
        }
        
    }


    protected void imbHuy_Click(object sender, ImageClickEventArgs e)
    {
        clean();
    }
}