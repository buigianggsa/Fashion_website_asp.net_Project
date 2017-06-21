<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="QuanLyDonHang.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Quản lý hóa đơn</h2>
    <div style="text-align:center;">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idDHang" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="idDHang" HeaderText="idDHang" InsertVisible="False" ReadOnly="True" SortExpression="idDHang" />
            <asp:BoundField DataField="ThoiDiemDatHang" HeaderText="ThoiDiemDatHang" SortExpression="ThoiDiemDatHang" />
            <asp:BoundField DataField="TenNguoiNhan" HeaderText="TenNguoiNhan" SortExpression="TenNguoiNhan" />
            <asp:BoundField DataField="SoDT" HeaderText="SoDT" SortExpression="SoDT" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="DiaChiGiaoHang" HeaderText="DiaChiGiaoHang" SortExpression="DiaChiGiaoHang" />
            <asp:BoundField DataField="TinhTrang" HeaderText="TinhTrang" SortExpression="TinhTrang" />
            <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" DeleteCommand="DELETE FROM [DonHang] WHERE [idDHang] = @idDHang" InsertCommand="INSERT INTO [DonHang] ([ThoiDiemDatHang], [TenNguoiNhan], [SoDT], [Email], [DiaChiGiaoHang], [TinhTrang], [GhiChu]) VALUES (@ThoiDiemDatHang, @TenNguoiNhan, @SoDT, @Email, @DiaChiGiaoHang, @TinhTrang, @GhiChu)" SelectCommand="SELECT * FROM [DonHang]" UpdateCommand="UPDATE [DonHang] SET [ThoiDiemDatHang] = @ThoiDiemDatHang, [TenNguoiNhan] = @TenNguoiNhan, [SoDT] = @SoDT, [Email] = @Email, [DiaChiGiaoHang] = @DiaChiGiaoHang, [TinhTrang] = @TinhTrang, [GhiChu] = @GhiChu WHERE [idDHang] = @idDHang">
        <DeleteParameters>
            <asp:Parameter Name="idDHang" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ThoiDiemDatHang" Type="DateTime" />
            <asp:Parameter Name="TenNguoiNhan" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChiGiaoHang" Type="String" />
            <asp:Parameter Name="TinhTrang" Type="Int32" />
            <asp:Parameter Name="GhiChu" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ThoiDiemDatHang" Type="DateTime" />
            <asp:Parameter Name="TenNguoiNhan" Type="String" />
            <asp:Parameter Name="SoDT" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="DiaChiGiaoHang" Type="String" />
            <asp:Parameter Name="TinhTrang" Type="Int32" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="idDHang" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

