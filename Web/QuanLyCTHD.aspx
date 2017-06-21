<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="QuanLyCTHD.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Quản lý chi tiết hóa đơn</h2>
    <div style="text-align:center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idDHang,idSP" DataSourceID="SqlDataSource1" Width="597px">
            <Columns>
                <asp:BoundField DataField="idDHang" HeaderText="idDHang" ReadOnly="True" SortExpression="idDHang" />
                <asp:BoundField DataField="idSP" HeaderText="idSP" ReadOnly="True" SortExpression="idSP" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                <asp:CommandField ShowDeleteButton="True" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" DeleteCommand="DELETE FROM [ChiTietDonHang] WHERE [idDHang] = @idDHang AND [idSP] = @idSP" InsertCommand="INSERT INTO [ChiTietDonHang] ([idDHang], [idSP], [Size], [SoLuong], [Gia]) VALUES (@idDHang, @idSP, @Size, @SoLuong, @Gia)" SelectCommand="SELECT * FROM [ChiTietDonHang]" UpdateCommand="UPDATE [ChiTietDonHang] SET [Size] = @Size, [SoLuong] = @SoLuong, [Gia] = @Gia WHERE [idDHang] = @idDHang AND [idSP] = @idSP">
            <DeleteParameters>
                <asp:Parameter Name="idDHang" Type="Int32" />
                <asp:Parameter Name="idSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idDHang" Type="Int32" />
                <asp:Parameter Name="idSP" Type="Int32" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Gia" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="Gia" Type="Double" />
                <asp:Parameter Name="idDHang" Type="Int32" />
                <asp:Parameter Name="idSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    
</asp:Content>

