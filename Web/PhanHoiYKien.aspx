<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="PhanHoiYKien.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <h2 class="tieudeh2">Phản hồi từ khách hàng</h2>
    <p style="font-family:'Times New Roman'; font-size:30px; font-weight:bold;">Ý kiến của bạn</p>
    <p>===================================================================================================</p>
    <div style="border-bottom:1px solid #d5d5d5; font-family:'Times New Roman'; font-size:25px;  padding-bottom:5px;">Nhập thông tin đầy đủ</div>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style38" style="width: 114px">Họ và tên</td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server" placeholder="Nhập họ tên" Height="20px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 114px">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Nhập email" Height="20px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Bạn nhập sai cú pháp" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 114px">Số điện thoại</td>
            <td>
                <asp:TextBox ID="txtSoDT" runat="server" placeholder="Nhập điện thoại" Height="20px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSoDT" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSoDT" ErrorMessage="Bạn nhập sai định dạng số điện thoại của Việt Nam" ForeColor="Red" ValidationExpression="^0(84|50|96|97|98|162|163|164|165|166|167|168|169|91|94|123|124|125|127|129|90|93|120|121|122|126|128|92|188|993|994|995|996|99|95)\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 114px; height: 34px;">Địa chỉ</td>
            <td style="height: 34px">
                <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Nhập địa chỉ" Height="20px" Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 114px">Chủ đề</td>
            <td><asp:TextBox ID="txtChuDe" placeholder="Nhập chủ đề"  runat="server" Height="20px" Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtChuDe" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 114px">Nội dung</td>
            <td>
                <asp:TextBox ID="txtNoiDung" runat="server" Height="100px" Rows="10" Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNoiDung" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnGuiLienHe"  runat="server" BackColor="#6600ff" ForeColor="#ffffff" Text="Gửi liên hệ" Height="40px" OnClick="btnGuiLienHe_Click" Width="100px" />&nbsp;<asp:Button ID="btnHuy" runat="server" BackColor="White" Text="Hủy" CausesValidation="False" Height="40px" OnClick="btnHuy_Click" Width="50px" /></td>
        </tr>
    </table>
</asp:Content>

