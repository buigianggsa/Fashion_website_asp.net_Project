using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Default : System.Web.UI.Page
{
    WebThoiTrangDataContext db = new WebThoiTrangDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lvSPMoi.DataSource = db.SanPhams.OrderByDescending(p => p.idSP).Take(12);
            lvSPMoi.DataBind();
            lvSPBanChay.DataSource = db.SanPhams.OrderByDescending(p => p.ChiTietDonHangs.Count).Take(16);
            lvSPBanChay.DataBind();
        }
    }
}