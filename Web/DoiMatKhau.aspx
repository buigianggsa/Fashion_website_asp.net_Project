<%@ Page Title="" Language="C#" MasterPageFile="~/Web/Admin.master" AutoEventWireup="true" CodeFile="DoiMatKhau.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style27 {
            width: 46%;
            margin:20px 0px 0px 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="tieudeh2">Đổi mật khẩu</h2>
    <table class="auto-style27">
        <tr>
            <td>Mật khẩu cũ</td>
            <td>
            <asp:TextBox ID="txtMKCu" placeholder="Type old password" runat="server" EnableTheming="True" Height="20px" TextMode="Password" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMKCu" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mật khẩu mới</td>
            <td>
            <asp:TextBox ID="txtMKMoi" placeholder="Type new password" runat="server" EnableTheming="True" Height="20px" TextMode="Password" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMKMoi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Nhập lại khẩu mới</td>
            <td>
            <asp:TextBox ID="txtRMKMoi" placeholder="Retype new password" runat="server" EnableTheming="True" Height="20px" TextMode="Password" Width="260px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRMKMoi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnAdd"  runat="server" BackColor="#6600ff" ForeColor="#ffffff" Text="Đổi" Height="40px"  Width="65px" OnClick="btnAdd_Click" />&nbsp;<asp:Button ID="btnHuy" runat="server" BackColor="White" Text="Hủy" CausesValidation="False" Height="40px" Width="50px" OnClick="btnHuy_Click" /></td>
        </tr>
    </table>
</asp:Content>

