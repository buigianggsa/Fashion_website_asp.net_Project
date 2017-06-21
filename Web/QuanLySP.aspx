<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="QuanLySP.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style17 {
            width: 82%;
        }
        .auto-style27 {
            font-size: 20px;
            width: 157px;
        }
        .auto-style28 {
            width: 76%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Quản lý sản phẩm</h2>
    <div class="them">Thêm sản phẩm</div>
    <div class="them1">
        <table class="auto-style28">
            <tr>
                <td class="auto-style27">ID chủng loại:</td>
                <td class="text">
                    <asp:DropDownList ID="ddlIDCL" BorderWidth="2px"  runat="server" Width="200px" Height="25px" DataSourceID="SqlDataSource3" DataTextField="TenCL" DataValueField="idCL" ></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" SelectCommand="SELECT [idCL], [TenCL] FROM [ChungLoai]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">ID loại:</td>
                <td class="text">
                    <asp:DropDownList ID="ddlIDL" BorderWidth="2px"  runat="server" Width="200px" Height="25px" DataSourceID="SqlDataSource2" DataTextField="TenLoai" DataValueField="idLoai"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" SelectCommand="SELECT [idLoai], [TenLoai] FROM [LoaiSP]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Tên sản phẩm:</td>
                <td class="text">
                    <asp:TextBox ID="txtTenSP" placeholder="Tên sản phẩm" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenSP" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Mô tả:</td>
                <td class="text">
                    <asp:TextBox ID="txtMoTa" placeholder="Mô tả" runat="server" Width="400px" Height="100px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style27">Ngày cập nhật:</td>
                <td class="text">
                    <asp:Label ID="lblNgCN" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Size:</td>
                <td class="text">
                    &nbsp;<asp:DropDownList ID="ddlSize" runat="server" Width="50px" Height="20px">
                        <asp:ListItem>XXS</asp:ListItem>
                        <asp:ListItem>XS</asp:ListItem>
                        <asp:ListItem>S</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                        <asp:ListItem>L</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                        <asp:ListItem>XXL</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Giá:</td>
                <td class="text">
                    <asp:TextBox ID="txtGia" placeholder="Giá sản phẩm" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtGia" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Hình sản phẩm:</td>
                <td class="text">
                    <asp:FileUpload ID="fulHinh" BackColor="#006600" Font-Bold="true" ForeColor="White" runat="server" /></td>
            </tr>
            <tr>
                <td class="auto-style27">Số lượng tồn kho:</td>
                <td class="text">
                    <asp:TextBox ID="txtSLTon" placeholder="Số lượng tồn" runat="server" Width="100px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSLTon" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">Ghi chú:</td>
                <td class="text">
                    <asp:TextBox ID="txtGhiChu" placeholder="Ghi chú" runat="server" Width="400px" Height="40px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style27">Ẩn hiện:</td>
                <td class="text">
                    <asp:DropDownList ID="ddlAnHienSP" BorderWidth="2px"  runat="server" Width="100px" Height="25px">
                        <asp:ListItem Value="0">Ẩn</asp:ListItem>
                        <asp:ListItem Value="1">Hiện</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
        </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd"  runat="server" BackColor="#6600ff" ForeColor="#ffffff" Text="Thêm" Height="40px"  Width="100px" OnClick="btnAdd_Click" />&nbsp;<asp:Button ID="btnHuy" runat="server" BackColor="White" Text="Hủy" CausesValidation="False" Height="40px" Width="50px" OnClick="btnHuy_Click" />
            <br />
    </div>
    <br />
    <div style="text-align:center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style15" DataKeyNames="idSP" DataSourceID="SqlDataSource1" Width="233px">
        <Columns>
            <asp:BoundField DataField="idSP" HeaderText="idSP" InsertVisible="False" ReadOnly="True" SortExpression="idSP" />
            <asp:BoundField DataField="idLoai" HeaderText="idLoai" SortExpression="idLoai" />
            <asp:BoundField DataField="idCL" HeaderText="idCL" SortExpression="idCL" />
            <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
            <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
            <asp:BoundField DataField="NgayCapNhat" HeaderText="NgayCapNhat" SortExpression="NgayCapNhat" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
            <asp:BoundField DataField="UrlHinh" HeaderText="UrlHinh" SortExpression="UrlHinh" />
            <asp:BoundField DataField="SoLuongTonKho" HeaderText="SoLuongTonKho" SortExpression="SoLuongTonKho" />
            <asp:BoundField DataField="GhiChu" HeaderText="GhiChu" SortExpression="GhiChu" />
            <asp:BoundField DataField="AnHien" HeaderText="AnHien" SortExpression="AnHien" />
            <asp:CommandField CausesValidation="False" ShowDeleteButton="True" ShowEditButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [idSP] = @idSP" InsertCommand="INSERT INTO [SanPham] ([idLoai], [idCL], [TenSP], [MoTa], [NgayCapNhat], [Size], [Gia], [UrlHinh], [SoLuongTonKho], [GhiChu], [AnHien]) VALUES (@idLoai, @idCL, @TenSP, @MoTa, @NgayCapNhat, @Size, @Gia, @UrlHinh, @SoLuongTonKho, @GhiChu, @AnHien)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [idLoai] = @idLoai, [idCL] = @idCL, [TenSP] = @TenSP, [MoTa] = @MoTa, [NgayCapNhat] = @NgayCapNhat, [Size] = @Size, [Gia] = @Gia, [UrlHinh] = @UrlHinh, [SoLuongTonKho] = @SoLuongTonKho, [GhiChu] = @GhiChu, [AnHien] = @AnHien WHERE [idSP] = @idSP">
        <DeleteParameters>
            <asp:Parameter Name="idSP" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idLoai" Type="Int32" />
            <asp:Parameter Name="idCL" Type="Int32" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayCapNhat" Type="DateTime" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Gia" Type="Int32" />
            <asp:Parameter Name="UrlHinh" Type="String" />
            <asp:Parameter Name="SoLuongTonKho" Type="Int32" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="AnHien" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="idLoai" Type="Int32" />
            <asp:Parameter Name="idCL" Type="Int32" />
            <asp:Parameter Name="TenSP" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="NgayCapNhat" Type="DateTime" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Gia" Type="Int32" />
            <asp:Parameter Name="UrlHinh" Type="String" />
            <asp:Parameter Name="SoLuongTonKho" Type="Int32" />
            <asp:Parameter Name="GhiChu" Type="String" />
            <asp:Parameter Name="AnHien" Type="Int32" />
            <asp:Parameter Name="idSP" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

