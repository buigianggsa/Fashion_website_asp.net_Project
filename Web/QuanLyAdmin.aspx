<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="QuanLyAdmin.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            width: 625px;
        }
        .auto-style28 {
            width: 98%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Quản lý admin</h2>
    <div class="them">Thêm tài khoản</div>
    <div class="them1">
        <table class="auto-style28">
            <tr>
                <td class="ten">Họ và tên:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtHoTen" placeholder="Họ và tên" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">UserName:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtUser" placeholder="Username" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUser" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">Type new password:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtPassword" placeholder="Type new password" runat="server" Width="400px" Height="20px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">Retype new password:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtRpass" placeholder="Retype new password" runat="server" Width="400px" Height="20px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRpass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">Địa chỉ:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtDiaChi" placeholder="Địa chỉ" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">Điện thoại:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtDienThoai" placeholder="Điện thoại" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Nhập số điện thoại sai định dạng" ForeColor="Red" ValidationExpression="^0(84|50|96|97|98|162|163|164|165|166|167|168|169|91|94|123|124|125|127|129|90|93|120|121|122|126|128|92|188|993|994|995|996|99|95)\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">Email:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Width="400px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Bạn nhập sai cú pháp email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">Ngày đăng kí:</td>
                <td class="auto-style27">
                    <asp:Label ID="lblNgDK" placeholder="Ngày đăng kí" runat="server" Width="200px" Height="20px" ></asp:Label></td>
            </tr>
            <tr>
                <td class="ten">Ngày sinh:</td>
                <td class="auto-style27">
                    <asp:TextBox ID="txtNgSinh" placeholder="Ngày sinh" runat="server" Width="200px" Height="20px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNgSinh" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNgSinh" ErrorMessage="Định dạng ngày tháng phải đúng dd-mm-yyyy" ForeColor="Red" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="ten">Giới tính:</td>
                <td class="auto-style27">
                    <asp:DropDownList ID="ddlGioiTinh" runat="server" Width="100px" Height="25px">
                        <asp:ListItem Value="0">Nam</asp:ListItem>
                        <asp:ListItem Value="1">Nữ</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="ten">Quyền đăng nhập:</td>
                <td class="auto-style27">
                    <asp:DropDownList ID="ddlQuyen"   runat="server" Width="100px" Height="25px" DataSourceID="SqlDataSource2" DataTextField="TenQuyen" DataValueField="idQuyen">
                   
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" SelectCommand="SELECT * FROM [QuyenTruyCap]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd"  runat="server" BackColor="#6600ff" ForeColor="#ffffff" Text="Thêm" Height="40px"  Width="100px" OnClick="btnAdd_Click" />&nbsp;<asp:Button ID="btnHuy" runat="server" BackColor="White" Text="Hủy" CausesValidation="False" Height="40px" Width="50px" OnClick="btnHuy_Click" />
            <br />
    </div>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idUser" DataSourceID="SqlDataSource1" Width="704px">
        <Columns>
            <asp:BoundField DataField="idUser" HeaderText="idUser" InsertVisible="False" ReadOnly="True" SortExpression="idUser" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="DienThoai" HeaderText="DienThoai" SortExpression="DienThoai" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="NgayDangKy" HeaderText="NgayDangKy" SortExpression="NgayDangKy" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
            <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
            <asp:BoundField DataField="idQuyen" HeaderText="idQuyen" SortExpression="idQuyen" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" DeleteCommand="DELETE FROM [NguoiDung] WHERE [idUser] = @idUser" InsertCommand="INSERT INTO [NguoiDung] ([HoTen], [Username], [Password], [DiaChi], [DienThoai], [Email], [NgayDangKy], [NgaySinh], [GioiTinh], [idQuyen]) VALUES (@HoTen, @Username, @Password, @DiaChi, @DienThoai, @Email, @NgayDangKy, @NgaySinh, @GioiTinh, @idQuyen)" SelectCommand="SELECT * FROM [NguoiDung]" UpdateCommand="UPDATE [NguoiDung] SET [HoTen] = @HoTen, [Username] = @Username, [Password] = @Password, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai, [Email] = @Email, [NgayDangKy] = @NgayDangKy, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh, [idQuyen] = @idQuyen WHERE [idUser] = @idUser">
        <DeleteParameters>
            <asp:Parameter Name="idUser" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="DienThoai" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="NgayDangKy" Type="DateTime" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="idQuyen" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="DienThoai" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="NgayDangKy" Type="DateTime" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="GioiTinh" Type="String" />
            <asp:Parameter Name="idQuyen" Type="Int32" />
            <asp:Parameter Name="idUser" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

