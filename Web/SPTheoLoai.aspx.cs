using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_SPTheoLoai : System.Web.UI.Page
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    int PageSize = 24;//số sp trên 1 trang
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Phân trang và hiển thị sản phẩm
            Session["PageCurrent"] = 0;
            hienthisanpham();
        }
    }

    void hienthisanpham()
    {
        string tieude = "";
        List<SanPham> items = null;
        //Lấy sản phẩm theo loại
        if (Request.QueryString["idLoai"] != null)
        {
            int idLoai = int.Parse(Request.QueryString["idLoai"].ToString());
            LoaiSP lo = db.LoaiSPs.SingleOrDefault(p => p.idLoai == idLoai);
            items = lo.SanPhams.OrderByDescending(p => p.idSP).ToList();

            tieude = string.Format("{2}-->{0} có {1} sản phẩm.", lo.TenLoai, lo.SanPhams.Count, lo.ChungLoai.TenCL);
            //Sửa title
            this.Title = tieude;
        }
        else if (Request.QueryString["idCL"] != null)
        {
            int idCL = int.Parse(Request.QueryString["idCL"].ToString());
            ChungLoai lo = db.ChungLoais.SingleOrDefault(p => p.idCL == idCL);
            items = lo.SanPhams.ToList();
            tieude = string.Format("{0} có {1} sản phẩm.", lo.TenCL, lo.SanPhams.Count);
            //sửa title
            this.Title = tieude;
        }
        else if(Request.QueryString["Search"] !=null)//search
        {
            string search = Request.QueryString["Search"].ToString();
            items = db.SanPhams.Where(p => p.TenSP.Contains(search)).ToList();
            tieude = string.Format("Kết quả tìm kiếm theo từ khóa: {0}.", search);
            this.Title = "Tất cả sản phẩm";
        }
        else //Hiển thị tất cả
        {
            items = db.SanPhams.OrderByDescending(p=>p.idSP).ToList();
            tieude = string.Format("Tất cả sản phẩm ({0}).", items.Count);
            this.Title = "Tất cả sản phẩm";
        }
        //Tiêu đề
        tieudeloai.InnerHtml = tieude;
        //Trang hiện tại
        int PageCurrent = (Session["PageCurrent"] != null) ? (int)Session["PageCurrent"]:0;
        //Tổng số trang
        int PageCount = (int)Math.Ceiling(1.0 * items.Count / PageSize);
        //Lưu session 2 biến giữ trang hiện tại và trang cuối
        Session["PageCurrent"] = PageCurrent;
        Session["LastPageNo"] = PageCount - 1;

        lblPhanTrang.Visible = (PageCount > 0);
        lblTrang.Text = string.Format("Trang: {0}/{1}.", PageCurrent + 1, PageCount);

        lvSanPham.DataSource = items.Where(p => p.AnHien == 1).Skip(PageCurrent * PageSize).Take(PageSize);
        lvSanPham.DataBind();

        //Bỏ qua nút trước nếu đang ở trang đầu
        btnDau.Enabled = btnTruoc.Enabled = (PageCurrent > 0);
        btnCuoi.Enabled = btnKe.Enabled = (PageCurrent < (int)Session["LastPageNo"]);
    }
    protected void btnDau_Click(object sender, EventArgs e)
    {
        Session["PageCurrent"] = 0;
        hienthisanpham();
    }

    protected void btnTruoc_Click(object sender, EventArgs e)
    {
        Session["PageCurrent"] = (int)Session["PageCurrent"] - 1;
        hienthisanpham();
    }

    protected void btnKe_Click(object sender, EventArgs e)
    {
        Session["PageCurrent"] = (int)Session["PageCurrent"] + 1;
        hienthisanpham();
    }

    protected void btnCuoi_Click(object sender, EventArgs e)
    {
        Session["PageCurrent"] = Session["LastPageNo"];
        hienthisanpham();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void lvSanPham_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        
    }
}