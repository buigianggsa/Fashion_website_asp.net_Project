<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="ThongTinDatHang.aspx.cs" Inherits="Web_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <h2 class="tieudeh2">Thông tin khách hàng</h2>
    <div style="border:1px solid #b1acac; border-radius:10px; margin-bottom:10px;">
        <asp:Repeater runat ="server" ID="rptDH" >
            <HeaderTemplate>
            <table style="border:1px solid black; width:850px; text-align:center; margin:5px 24px 10px 24px"; >
                    <tr style="color:green; font-weight:bold; font-size:20px; font-family:'Times New Roman';">     
                        <td> Mã sản phẩm</td>
                        <td>Tên sản phẩm </td>
                        <td>Size</td>
                        <td>Giá </td>
                        <td>Số lượng</td>
                        <td>Thành tiền </td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                    <tr style="font-size:20px;">
                        <td><asp:Label runat="server" ID="lblMaSP" Text='<%#Eval("MaSP") %>'></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblTenSP" Text='<%#Eval("TenSP") %>'></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblSize" Text='<%#Eval("Size") %>'></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblGia" Text='<%#Eval("Gia") %>'></asp:Label></td>
                        <td><asp:Label ID="lblSoLuong" runat="server" Text='<%#Eval("SoLuong") %>'></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblThanhTien" Text='<%#Eval("ThanhTien") %>'></asp:Label></td>
                    </tr>
            </ItemTemplate>
            <FooterTemplate>
           </table>
           </FooterTemplate>
        </asp:Repeater>
        
        <table style="margin-left: 500px;  font-size:20px; font-family:'Times New Roman';">
            <tr >
                <td >Tổng sản phẩm:</td>
                <td style="color:red; font-weight:bold;">
                    <asp:Literal ID="ltrTongSP" runat="server"></asp:Literal></td>
            </tr>
            <tr >
                <td>Tổng tiền của các sản phẩm:</td>
                <td style="color:red; font-weight:bold;">
                    <asp:Literal ID="ltrTongTien" runat="server"></asp:Literal>VNĐ</td>
            </tr>
        </table>
    </div>
    <div style="border:1px solid #b1acac; border-radius:10px;">
        <div style="background-color:green;font-weight:bold;border-top-left-radius:10px; border-top-right-radius:10px; color:white; font-family:Tahoma 'Times New Roman'; height:40px; font-size:25px; text-align:center; padding-top:20px;">Nhập đầy đủ thông tin của quý khách !</div>
    <table style="width: 58%; margin-left:200px;">
        <tr>
            <td class="auto-style38" style="width: 147px"><h3 style="color:#8e8d8d">Họ tên:</h3></td>
            <td>
                <asp:TextBox ID="txtHoTen" runat="server" placeholder="Nhập họ và tên" Height="25px" Width="340px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHoTen" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 147px"><h3 style="color:#8e8d8d">Số điện thoại:</h3></td>
            <td>
                <asp:TextBox ID="txtSoDT" runat="server" placeholder="Nhập số điện thoại" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSoDT" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSoDT" ErrorMessage="Số điện thoại sai định dạng điện thoại Việt Nam" ForeColor="Red" ValidateRequestMode="Disabled" ValidationExpression="^0(50|96|97|98|162|163|164|165|166|167|168|169|91|94|123|124|125|127|129|90|93|120|121|122|126|128|92|188|993|994|995|996|99|95)\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}\s?\d{1}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 147px"><h3 style="color:#8e8d8d">Email:</h3></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Nhập email" Height="25px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email phải đúng định dạng" ForeColor="Red" ValidateRequestMode="Disabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style38" style="width: 147px"><h3 style="color:#8e8d8d">Địa chỉ:</h3></td>
            <td>
                <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Nhập địa chỉ" Height="25px" Width="340px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
    </table>
    </div>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnHoanThanh" runat="server" Font-Bold="true" Font-Size="16px" BackColor="#660033" ForeColor="White" Text="Hoàn thành" Height="42px" Width="105px" OnClick="btnHoanThanh_Click" />
    <br />
    <br />
</asp:Content>

