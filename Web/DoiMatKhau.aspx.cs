using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;

public partial class Web_Default : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand com = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Response.Write(Session["user2"].ToString());
        }
    }
    private void clean()
    {
        txtRMKMoi.Text = "";
        txtMKMoi.Text = "";
        txtMKCu.Text = "";
    }
    public string mahoa(string pass)
    {
        return FormsAuthentication.HashPasswordForStoringInConfigFile(pass.Trim(), "MD5");
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string user=Session["user2"].ToString();
        string pass = mahoa(txtMKCu.Text);
        con = new SqlConnection(conn);
        com = new SqlCommand("Select Password from NguoiDung where Username='" + user + "'", con);
        com.CommandType = System.Data.CommandType.Text;
        con.Open();
        string passold =(string) com.ExecuteScalar();
        con.Close();
        if ((txtMKMoi.Text).Equals(txtRMKMoi.Text))
        {
            if (pass.Equals(passold)){
                con = new SqlConnection(conn);
                com = new SqlCommand("Update NguoiDung set Password='" + mahoa(txtMKMoi.Text) + "' where Username='" + user + "'", con);
                com.CommandType = System.Data.CommandType.Text;
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Đổi mật khẩu thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Password cũ không đúng!')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('Password mới và mật khẩu nhập lại không trùng nhau!')</script>");
        }
    }

    protected void btnHuy_Click(object sender, EventArgs e)
    {

    }
}