<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="Web_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">
    <h2 class="tieudeh2">Giỏ hàng của bạn</h2>
    <div style="border:1px solid black; width: 895px; text-align:center;">
        <table style="width: 895px; border:1px solid black;">
        <tr style="background-color:#CED7FB ; color: Black;">
            <td class="title-GH">Mã SP</td>
            <td class="auto-style36" style="width: 352px">Tên SP</td>
            <td style="width: 152px">Size</td>
            <td class="auto-style30" style="width: 152px">Giá</td>
            <td class="auto-style34" style="width: 95px">Số lượng</td>
            <td class="title-GH">Thành tiền</td>
            <td class="title-GH"></td>
        </tr>
        <asp:Repeater ID="rpt_giohang" runat="server" EnableViewState="true" OnItemCommand="rpt_giohang_ItemCommand" >
            <ItemTemplate>
                <tr>
                            <td>
                             <asp:Label runat="server" id="lbID" Text='<%#Eval("MaSP") %>'></asp:Label>
                            </td>
                            <td>
                                <%# Eval("TenSP") %>
                            </td>
                            <td>
                             <asp:Label runat="server" id="lblSize" Text='<%#Eval("Size") %>'></asp:Label>
                            </td>
                            <td>
                                <%# Eval("Gia") %>
                            </td>
                            <td>
                               <asp:TextBox runat="server" ID="txtSL" Width="50px" Text='<%# Eval("SoLuong") %>'></asp:TextBox> 
                            </td>
                            <td>
                                <%# Eval("ThanhTien") %>
                            </td>
                    <td>
                        <asp:ImageButton runat="server" ID="imbDelete" CommandName="Xoa" CommandArgument='<%#Eval("MaSP") %>' ImageUrl="~/Image/1290571539_dialog-close.ico"/>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </table>

    </div>
    <div style="margin-top:20px;  width: 259px;">
        <table style="width: 100%;">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="20px" ForeColor="#009900" Text="Tổng tiền:"></asp:Label></td>
                <td><h3 style="color:red"><asp:Literal ID="ltrTongtien"  runat="server"></asp:Literal> VNĐ</h3></td>
            </tr>
        </table>
        
        
        <asp:Button ID="btnMuaTiep" BackColor="#660033" ForeColor="white" runat="server" Font-Bold="true" Font-Size="16px" Text="Tiếp tục mua hàng" Height="40px" Width="160px" OnClick="btnMuaTiep_Click" />
        <asp:Button ID="btnDatHang" runat="server" BackColor="#003300" ForeColor="white" Font-Bold="true" Font-Size="16px" Text="Đặt hàng" Height="40px" Width="90px" OnClick="btnDatHang_Click" /> 
    </div>
    
</asp:Content>

