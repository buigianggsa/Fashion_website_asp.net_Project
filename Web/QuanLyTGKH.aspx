<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="QuanLyTGKH.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Quản lý trợ giúp khách hàng</h2>
    <div style="text-align:center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idLL" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="idLL" HeaderText="idLL" ReadOnly="True" SortExpression="idLL" />
            <asp:BoundField DataField="LoiKhuyen" HeaderText="LoiKhuyen" SortExpression="LoiKhuyen" />
            <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="TGLamViec" HeaderText="TGLamViec" SortExpression="TGLamViec" />
            <asp:BoundField DataField="ChiNhanhCoHang" HeaderText="ChiNhanhCoHang" SortExpression="ChiNhanhCoHang" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" DeleteCommand="DELETE FROM [TroGiupKH] WHERE [idLL] = @idLL" InsertCommand="INSERT INTO [TroGiupKH] ([idLL], [LoiKhuyen], [DienThoai], [Email], [DiaChi], [TGLamViec], [ChiNhanhCoHang]) VALUES (@idLL, @LoiKhuyen, @DienThoai, @Email, @DiaChi, @TGLamViec, @ChiNhanhCoHang)" SelectCommand="SELECT * FROM [TroGiupKH]" UpdateCommand="UPDATE [TroGiupKH] SET [LoiKhuyen] = @LoiKhuyen, [DienThoai] = @DienThoai, [Email] = @Email, [DiaChi] = @DiaChi, [TGLamViec] = @TGLamViec, [ChiNhanhCoHang] = @ChiNhanhCoHang WHERE [idLL] = @idLL">
            <DeleteParameters>
                <asp:Parameter Name="idLL" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idLL" Type="Int32" />
                <asp:Parameter Name="LoiKhuyen" Type="String" />
                <asp:Parameter Name="DienThoai" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="TGLamViec" Type="String" />
                <asp:Parameter Name="ChiNhanhCoHang" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LoiKhuyen" Type="String" />
                <asp:Parameter Name="DienThoai" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="DiaChi" Type="String" />
                <asp:Parameter Name="TGLamViec" Type="String" />
                <asp:Parameter Name="ChiNhanhCoHang" Type="String" />
                <asp:Parameter Name="idLL" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>

