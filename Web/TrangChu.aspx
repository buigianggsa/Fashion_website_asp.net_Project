<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <!--Sản phẩm mới-->
    <h2 class="tieudeh2">Sản phẩm mới</h2>
    <asp:ListView ID="lvSPMoi" runat="server">
        <ItemTemplate>
            <div class="motsp">
                
                <a href="ChiTietSP.aspx?idSP=<%# Eval("idSP") %>">
                    <img class="hinhsp" src="../Image/AnhSP/<%# Eval("UrlHinh") %>"/>
                </a>
                <div class="tensp"><%# Eval("TenSP") %></div>
                <br />
                <div class="giasp"><%# Eval("Gia", "{0:#,##0} vnđ") %></div>
            </div>
        </ItemTemplate>
    </asp:ListView>
    <!--Sản phẩm bán chạy-->
    <h2 class="tieudeh2">Sản phẩm bán chạy</h2>
    <asp:ListView ID="lvSPBanChay" runat="server">
        <ItemTemplate>
            <div class="motsp">
                
                <a href="ChiTietSP.aspx?idSP=<%# Eval("idSP") %>">
                    <img class="hinhsp" src="../Image/AnhSP/<%# Eval("UrlHinh") %>"/>
                </a>
                <div class="tensp"><%# Eval("TenSP") %></div>
                <br />
                <div class="giasp"><%# Eval("Gia", "{0:#,##0} vnđ") %></div>
            </div>
        </ItemTemplate>
    </asp:ListView>

</asp:Content>

