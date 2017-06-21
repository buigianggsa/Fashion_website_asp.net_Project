using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


public partial class Web_ChiTietSP : System.Web.UI.Page
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    clsThaoTac cls = new clsThaoTac();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                int idSP = int.Parse(Request.QueryString["idSP"]);
                cls.LoadChiTietSP(idSP, dlCTSP);
                cls.LoadSPCL(idSP, dlSPCL);
                dlHTKH.DataSource= db.TroGiupKHs.OrderByDescending(p => p.idLL);
                dlHTKH.DataBind();

                int sl = cls.SoLuongSP(idSP);
                if (sl > 20)
                {
                    lblTrangThai.Text = "Còn hàng";
                }
                else if (sl <= 20 && sl > 0)
                {
                    lblTrangThai.Text = "Còn ít hàng";
                }
                else
                {
                    lblTrangThai.Text = "Hết hàng";
                }
            }
            catch
            {
                Response.Redirect("TrangChu.aspx");
            }

        }
    }


    protected void dlCTSP_ItemCommand(object source, DataListCommandEventArgs e)
    {
        gioHang gh = new gioHang();
        int idSP = int.Parse(Request.QueryString["idSP"]);
        int htk = cls.SoLuongSP(idSP);
        int slm = int.Parse(((TextBox)e.Item.FindControl("txtSL")).Text);
        int tsp=gh.TongSP;
       
        if (htk > 0)
        {
            if ((slm+tsp) <= htk)
            {
                if (e.CommandName == "Them")
                {
                    if (Session["GioHang"] != null)
                    {
                        gh = (gioHang)Session["GioHang"];
                    }
                    int ma = int.Parse(((Label)e.Item.FindControl("lblMaSP")).Text);
                    string ten = ((Label)e.Item.FindControl("lblTenSP")).Text;
                    int sl = int.Parse(((TextBox)e.Item.FindControl("txtSL")).Text);
                    int gia = int.Parse(((Label)e.Item.FindControl("lblGia")).Text);
                    string size = ((DropDownList)e.Item.FindControl("ddlSize")).Text;
                    gh.AddToGioHang(new Item(ma,sl,size));
                    Session["GioHang"] = gh;
                    Response.Redirect("GioHang.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Lượng sản phẩm trong kho hiện tại không đủ đáp ứng đủ nhu cầu của quý khách hàng. Mong quý khách hàng thông cảm chọn lại số lượng mới. Xin cảm ơn!')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('Sản phẩm này đã hết xin quý khách hàng thông cảm! Chúng tôi sẽ cập nhật thêm sản phẩm. Xin cảm ơn!')</script>");
        }
        
    }

}