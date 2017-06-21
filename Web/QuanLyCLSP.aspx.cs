using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Web_Default : System.Web.UI.Page
{
    ChungLoai cl = new ChungLoai();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void gan()
    {
        cl.TenCL = txtTenCL.Text;
        cl.AnHien = int.Parse(ddlAnHienCLSP.SelectedValue);
    }
    private void clean()
    {
        txtTenCL.Text = "";
    }



    protected void btnAdd_Click(object sender, EventArgs e)
    {
        gan();
        string str = "Insert into [ChungLoai] values (N'" + cl.TenCL + "'," + cl.AnHien + ")";
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