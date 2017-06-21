using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Default : System.Web.UI.Page
{
    LoaiSP loaiSP = new LoaiSP();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void gan()
    {
        loaiSP.idCL = int.Parse(ddlIDCL.SelectedValue);
        loaiSP.TenLoai = txtTenLoai.Text;
        loaiSP.AnHien = int.Parse(ddlAnHienLoaiSP.SelectedValue);
    }
    private void clean()
    {
        txtTenLoai.Text = "";
    }


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        gan();
        string str = "Insert into [LoaiSP] values (" + loaiSP.idCL + ", N'" + loaiSP.TenLoai + "'," + loaiSP.AnHien + ")";
        SqlDataSource1.InsertCommand = str;
        SqlDataSource1.Insert();
        SqlDataSource1.DataBind();
        clean();
    }

    protected void btnHuy_Click(object sender, EventArgs e)
    {
        clean();
    }
}