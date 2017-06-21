<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <h2 class="tieudeh2">Đăng nhập</h2>
    <b style="font-size:25px; color:#9a0323">Dành riêng cho bộ phận quản lý website</b><br /><br />
    <div style="width: 315px; border:1px solid #00ffff;">
    <table style="width: 98%; margin-bottom:20px; margin-left:10px;">
        <tr style="text-align:center;">
            <td class="auto-style30" style=" padding-bottom:20px; width: 124px; color:green; font-weight:bold; font-size:30px;" colspan="2">
                Đăng nhập admin</td>
        </tr>
        <tr>
            <td class="auto-style30" style="width: 124px">Tên đăng nhập:</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" placeholder=" Username" Width="145px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30" style="width: 124px">Mật khẩu:</td>
            <td>
                <%--<asp:TextBox ID="txtPassword" runat="server" Width="145px"></asp:TextBox>--%>
                <asp:TextBox ID="txtPassword" runat="server" placeholder=" Password" Width="145px" CausesValidation="True" EnableTheming="True" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30" style="width: 124px" colspan="2">
                <asp:CheckBox ID="ckbLanSau" runat="server" />Lưu lần đăng nhập sau</td>
        </tr>
    </table>
        <div style="margin-left:10px; width: 297px;"><a style=" text-decoration:none;" href="QuenMatKhau.aspx">Quên mật khẩu?</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="btnDangNhap" runat="server" BackColor="#660066" ForeColor="White" Text="Đăng nhập" OnClick="btnDangNhap_Click" Height="39px" /></div>
        
        <br />
    </div>
</asp:Content>


