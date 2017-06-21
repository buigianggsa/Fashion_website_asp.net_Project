using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Web_Admin : System.Web.UI.MasterPage
{
    string conn = ConfigurationManager.ConnectionStrings["WebThoiTrangConnectionString"].ConnectionString;
    SqlConnection con = null;
    SqlCommand com = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                string user = Session["user"].ToString();
                con = new SqlConnection(conn);
                com = new SqlCommand("select HoTen from NguoiDung where Username='" + user+"'", con);
                com.CommandType = System.Data.CommandType.Text;
                con.Open();
                string tenND = (string)com.ExecuteScalar();
                con.Close();
                UserName.Text = tenND;
            }
            catch
            {
                Response.Redirect("DangNhap.aspx");
            }
            

            int quyen = int.Parse(Session["Quyen"].ToString());
            con = new SqlConnection(conn);
            com = new SqlCommand("select TenQuyen from QuyenTruyCap where idQuyen="+ quyen,con);
            com.CommandType = System.Data.CommandType.Text;
            con.Open();
            string tenQuyen = (string)com.ExecuteScalar();
            con.Close();
            lblQuyenHan.Text = tenQuyen;
            
        }
    }

    protected void ibtTrangChu_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("TrangChu.aspx");
    }

 
    protected void admin_Click(object sender, EventArgs e)
    {
        if (int.Parse(Session["Quyen"].ToString()) == 1)
        {
            Response.Redirect("QuanLyAdmin.aspx");
        }
        else
        {
            Response.Write("<script>alert('Bạn cần đăng nhập quyền admin!')</script>");

        }
    }

    protected void imbAdmin_Click(object sender, ImageClickEventArgs e)
    {
        if (int.Parse(Session["Quyen"].ToString()) == 1)
        {
            Response.Redirect("QuanLyAdmin.aspx");
        }
        else
        {
            Response.Write("<script>alert('Bạn cần đăng nhập quyền admin!')</script>");
        }
    }

    protected void lbtLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("DangNhap.aspx");
    }

    protected void lbtDoiMk_Click(object sender, EventArgs e)
    {
        string user = Session["user"].ToString();
        Session["user2"] = user;
        Response.Redirect("DoiMatKhau.aspx");
    }
}
