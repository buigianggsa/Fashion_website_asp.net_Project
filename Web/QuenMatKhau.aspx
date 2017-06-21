<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="QuenMatKhau.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <h1 class="tieudeh2">Quên tài khoản</h1>
    <div>
    <table style="width: 49%; margin-left:300px">
        <tr>
            <td style="font-size:30px; border-radius:5px; font-weight:bold; font-family:'Times New Roman'; background-color:#069d13; color:white; text-align:center" colspan="2">Điền thông tin</td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px">&nbsp; Họ tên: </td>
            <td class="auto-style36" style="width: 294px">
                <asp:TextBox ID="txtHoTen" runat="server" placeholder="Họ và tên" Height="20px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px">&nbsp; UserName:</td>
            <td class="auto-style36" style="width: 294px">
                <asp:TextBox ID="txtUser" runat="server" placeholder="Username" Height="20px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUser" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px">&nbsp; Địa chỉ:</td>
            <td class="auto-style36" style="width: 294px">
                <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Địa chỉ" Height="20px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px">&nbsp; Điện thoại:</td>
            <td class="auto-style36" style="width: 294px">
                <asp:TextBox ID="txtDienThoai" runat="server" placeholder="Số điện thoại" Height="20px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Bạn phải nhập đúng số điện thoại ở Việt Nam" ForeColor="Red" ValidationExpression="^0(50|96|97|98|162|163|164|165|166|167|168|169|91|94|123|124|125|127|129|90|93|120|121|122|126|128|92|188|993|994|995|996|99|95)\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px; height: 49px;">&nbsp; Email:</td>
            <td class="auto-style36" style="width: 294px; height: 49px;">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" Height="20px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" EnableTheming="True" ErrorMessage="Nhập email sai cú pháp" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px">&nbsp; Ngày sinh:</td>
            <td class="auto-style36" style="width: 294px">
                <asp:TextBox ID="txtNgaySinh" runat="server" placeholder="02-07-1995" Height="20px" Width="215px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNgaySinh" ErrorMessage="Định dạng phải đúng  dd-mm-yyyy" ForeColor="Red" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-](19|20)\d\d$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px">&nbsp; Type new password:</td>
            <td class="auto-style36" style="width: 294px">
                <asp:TextBox ID="txtNewPass" runat="server" placeholder="Type new password" Height="20px" Width="215px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNewPass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style36" style="width: 355px">&nbsp; Retype new password:</td>
            <td class="auto-style36" style="width: 294px">
                <asp:TextBox ID="txtRNPass" runat="server" placeholder="Retype new password" Height="20px" Width="215px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRNPass" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="margin-left:200px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:ImageButton ID="imbYeuCau" runat="server" ImageUrl="~/Image/yeucautaikhoan.png" OnClick="imbYeuCau_Click" />
            &nbsp; <asp:ImageButton ID="imbHuy" ImageUrl="~/Image/ytuonglamgiau.vn-Delete_Icon.png" runat="server" CausesValidation="False" Height="43px" OnClick="imbHuy_Click" Width="56px" />
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

