using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Web_Default : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand com = null;
    SqlDataReader rd = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private int phanQuyen(string input)
    {
        con = new SqlConnection(conn);
        com = new SqlCommand("kiemtraquyen", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@username", input);
        con.Open();
        int maquyen =(int)com.ExecuteScalar();
        con.Close();
        return maquyen;

    }

    public string mahoa(string pass)
    {
        return FormsAuthentication.HashPasswordForStoringInConfigFile(pass.Trim(), "MD5");
    }
    
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        string pass = mahoa(txtPassword.Text);
        Session["user"] = txtUserName.Text;
        con = new SqlConnection(conn);
        com = new SqlCommand("Login_TK", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Parameters.AddWithValue("@username", txtUserName.Text);
        com.Parameters.AddWithValue("@password", pass);
        con.Open();
        rd = com.ExecuteReader();
        bool login = rd.Read();
        con.Close();
        
        if (login)
        {
            int kt = phanQuyen(txtUserName.Text);
            Session["Quyen"] = kt;
            switch (kt)
            {
                case 1://truong hop admin
                    if (ckbLanSau.Checked)
                    {
                        HttpCookie mycookie = new HttpCookie("Login");
                        mycookie["UserName"] = txtUserName.Text;
                        mycookie.Expires = DateTime.Now.AddMinutes(20);
                        Response.Cookies.Add(mycookie);
                        Response.Redirect("QuanLyCLSP.aspx");
                    }
                    else
                    {
                        Response.Redirect("QuanLyCLSP.aspx");
                    }
                    
                    break;
                case 2:// truong hop employee
                    if (ckbLanSau.Checked)
                    {
                        HttpCookie mycookie = new HttpCookie("Login");
                        mycookie["UserName"] = txtUserName.Text;
                        mycookie.Expires = DateTime.Now.AddSeconds(10);
                        Response.Cookies.Add(mycookie);
                        Response.Redirect("QuanLyCLSP.aspx");
                    }
                    else
                    {
                        Response.Redirect("QuanLyCLSP.aspx");
                    }
                    
                    break;
            }
        }
        else
        {
            Response.Write("<script>alert('Tên đăng nhập hoặc mật khẩu chưa đúng!')</script>");
        }
        
        
    }
}