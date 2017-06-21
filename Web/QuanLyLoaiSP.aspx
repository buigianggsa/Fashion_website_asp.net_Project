<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="QuanLyLoaiSP.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Quản lý loại sản phẩm</h2>
    <div class="them">Thêm loại sản phẩm</div>
    <div class="them1">
        <table class="auto-style16">
            
            <tr>
                <td class="ten">ID chủng loại:</td>
                <td class="text">
                    <asp:DropDownList ID="ddlIDCL" BorderWidth="2px"  runat="server" Width="200px" Height="25px" DataSourceID="SqlDataSource3" DataTextField="TenCL" DataValueField="idCL"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" SelectCommand="SELECT [idCL], [TenCL] FROM [ChungLoai]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="ten">Tên loại:</td>
                <td class="text">
                    <asp:TextBox ID="txtTenLoai" placeholder="Tên loại" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenLoai" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="ten">Ẩn hiện:</td>
                <td class="text">
                    <asp:DropDownList ID="ddlAnHienLoaiSP" BorderWidth="2px"  runat="server" Width="100px" Height="25px">
                        <asp:ListItem Value="0">Ẩn</asp:ListItem>
                        <asp:ListItem Value="1">Hiện</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnAdd"  runat="server" BackColor="#6600ff" ForeColor="#ffffff" Text="Thêm" Height="40px"  Width="100px" OnClick="btnAdd_Click" />&nbsp;<asp:Button ID="btnHuy" runat="server" BackColor="White" Text="Hủy" CausesValidation="False" Height="40px" Width="50px" OnClick="btnHuy_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    </div>
    <br />
    <div style="text-align:center; margin-left:60px;">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idLoai" DataSourceID="SqlDataSource1" Width="874px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="idLoai" HeaderText="idLoai" InsertVisible="False" ReadOnly="True" SortExpression="idLoai" />
            <asp:BoundField DataField="idCL" HeaderText="idCL" SortExpression="idCL" />
            <asp:BoundField DataField="TenLoai" HeaderText="TenLoai" SortExpression="TenLoai" />
            <asp:BoundField DataField="AnHien" HeaderText="AnHien" SortExpression="AnHien" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CausesValidation="False" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" DeleteCommand="DELETE FROM [LoaiSP] WHERE [idLoai] = @idLoai" InsertCommand="INSERT INTO [LoaiSP] ([idCL], [TenLoai], [AnHien]) VALUES (@idCL, @TenLoai, @AnHien)" SelectCommand="SELECT * FROM [LoaiSP]" UpdateCommand="UPDATE [LoaiSP] SET [idCL] = @idCL, [TenLoai] = @TenLoai, [AnHien] = @AnHien WHERE [idLoai] = @idLoai">
        <DeleteParameters>
            <asp:Parameter Name="idLoai" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idCL" Type="Int32" />
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="AnHien" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="idCL" Type="Int32" />
            <asp:Parameter Name="TenLoai" Type="String" />
            <asp:Parameter Name="AnHien" Type="Int32" />
            <asp:Parameter Name="idLoai" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

