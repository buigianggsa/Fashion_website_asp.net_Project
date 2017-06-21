<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="QuanLyLienHe.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Quản lý phản hồi từ khách hàng</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idLienLac" DataSourceID="SqlDataSource1" Width="930px">
        <Columns>
            <asp:BoundField DataField="idLienLac" HeaderText="idLienLac" InsertVisible="False" ReadOnly="True" SortExpression="idLienLac" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="ChuDe" HeaderText="ChuDe" SortExpression="ChuDe" />
            <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=PHUONGIT-PC\SQLEXPRESS;Initial Catalog=WebThoiTrang;User ID=sa;Password=nhp23031995" DeleteCommand="DELETE FROM [LienHe] WHERE [idLienLac] = @idLienLac" InsertCommand="INSERT INTO [LienHe] ([HoTen], [Email], [SDT], [DiaChi], [ChuDe], [NoiDung]) VALUES (@HoTen, @Email, @SDT, @DiaChi, @ChuDe, @NoiDung)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [LienHe]" UpdateCommand="UPDATE [LienHe] SET [HoTen] = @HoTen, [Email] = @Email, [SDT] = @SDT, [DiaChi] = @DiaChi, [ChuDe] = @ChuDe, [NoiDung] = @NoiDung WHERE [idLienLac] = @idLienLac">
        <DeleteParameters>
            <asp:Parameter Name="idLienLac" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="ChuDe" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SDT" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="ChuDe" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="idLienLac" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

