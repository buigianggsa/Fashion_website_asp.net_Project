using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Default2 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["GioHang"] == null)
        {
            ltrTongtien.Text = "0";
            return;
        }

        if (!IsPostBack)
        {
            ganKetDuLieu();
        }
    }
    

    public void ganKetDuLieu()
    {
        gioHang gh = new gioHang();
        gh = (gioHang)Session["GioHang"];

        rpt_giohang.DataSource = gh.veBang();
        rpt_giohang.DataBind();

        ltrTongtien.Text = " " + gh.TongTien;

    }

    protected void rpt_giohang_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (IsPostBack == true)
        {
            if (e.CommandName == "Xoa")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                try
                {
                    gioHang gio = (gioHang)Session["GioHang"];
                    gio.XoaItem(id);
                    Response.Redirect("GioHang.aspx");
                }
                catch
                {
                    Response.Redirect("GioHang.aspx");
                }
                
            }
        }
    }

    protected void btnMuaTiep_Click(object sender, EventArgs e)
    {
        Response.Redirect("TrangChu.aspx");
    }

    protected void btnDatHang_Click(object sender, EventArgs e)
    {
        gioHang gh = (gioHang)Session["GioHang"];
        
        if (gh.danhsach.Count!= 0)
        {
            Response.Redirect("ThongTinDatHang.aspx");
        }
        else
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
}