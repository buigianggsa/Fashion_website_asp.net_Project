using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_WUC_DanhMuc : System.Web.UI.UserControl
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lvChungLoai.DataSource = db.ChungLoais.Where(p => p.AnHien == 1);
            lvChungLoai.DataBind();
        }
    }

    protected void lvChungLoai_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        HiddenField hfCL = e.Item.FindControl("hfChungLoai") as HiddenField;
        ListView lvloaisp = e.Item.FindControl("lvLoaiSP") as ListView;
        lvloaisp.DataSource = db.LoaiSPs.Where(p => p.idCL == int.Parse(hfCL.Value)).OrderBy(p => p.TenLoai).Select(p => new { p.idLoai, p.TenLoai, SoLuong = p.SanPhams.Count });
        lvloaisp.DataBind();
    }
}