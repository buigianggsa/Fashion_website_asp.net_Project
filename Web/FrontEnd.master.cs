using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FrontEnd : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            lblDangTruyCap.Text = Application["DangTruyCap"].ToString();
            lblDaTruyCap.Text= Application["DaTruyCap"].ToString();
            if (Session["GioHang"] == null)
            {
                ltrSoLuong.Text = "(0)";
                return;
            }
            else
            {
                gioHang gh = new gioHang();
                gh = (gioHang)Session["GioHang"];
                ltrSoLuong.Text = "("+gh.TongSP+")";
            }
            
        }
    }

    protected void giohang_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("GioHang.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("TrangChu.aspx");
    }

    protected void ibtTimkiem_Click(object sender, ImageClickEventArgs e)
    {
        string tk=txtTimKiem.Text;
        Session["TimKiem"] = tk;
        Response.Redirect("SPTheoLoai.aspx?Search="+tk);
    }
}
