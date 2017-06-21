<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="SPTheoLoai.aspx.cs" Inherits="Web_SPTheoLoai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <h2 class="tieudeh2" runat="server" id="tieudeloai">Sản phẩm</h2>
    <div id="lblPhanTrang" runat="server">
        <asp:Label ID="lblTrang" runat="server" Text=""></asp:Label>
        <asp:Button ID="btnDau" CssClass="btn" runat="server" Text="Đầu" OnClick="btnDau_Click"/>
        <asp:Button ID="btnTruoc" CssClass="btn" runat="server" Text="Trước" OnClick="btnTruoc_Click"/>
        <asp:Button ID="btnKe" CssClass="btn" runat="server" Text="Kế" OnClick="btnKe_Click"/>
        <asp:Button ID="btnCuoi" CssClass="btn" runat="server" Text="Cuối" OnClick="btnCuoi_Click"/>
    </div>
    <asp:ListView ID="lvSanPham" runat="server" OnItemCommand="lvSanPham_ItemCommand">
        <ItemTemplate>
            <div class="motsp">
                <a href='ChiTietSP.aspx?idSP=<%# Eval("idSP") %>'>
                    <img class="hinhsp" src="../Image/AnhSP/<%# Eval("UrlHinh") %>"/>
                </a>
                <div class="tensp"><%# Eval("TenSP")%></div>
                <br />
                <div class="giasp"><%# Eval("Gia","{0:#,##0} vnđ") %></div>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

