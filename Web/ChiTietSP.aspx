<%@ Page Title="" Language="C#" MasterPageFile="~/Web/FrontEnd.master" AutoEventWireup="true" CodeFile="ChiTietSP.aspx.cs" Inherits="Web_ChiTietSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderNoiDung" Runat="Server">                
    <div class="tieudeh2">Chi tiết sản phẩm</div>
    <table style="width: 100%;">
        <tr>
            <td valign="top">
                 
                 <asp:Label ID="Label1" Font-Size="20px" runat="server" Text="Trạng thái sản phẩm: "></asp:Label>
                 <asp:Label ID="lblTrangThai" Font-Size="20px" Font-Bold="true" ForeColor="Green" runat="server"></asp:Label>
                 <br />
                 <br />
                 <asp:DataList ID="dlCTSP" runat="server" RepeatColumns="1" OnItemCommand="dlCTSP_ItemCommand" >
                    <ItemTemplate>
                        <table border="0px" cellspacing="0px" cellpadding="0px" style="width: 100%;font-size:0.8em">
                        <tr class="dong">
                            <td id="cot1" style="width:150px; border:1px solid #000;" valign="top" rowspan="6" align="left" >
                                <img class="hinhsp" src="../Image/AnhSP/<%# Eval("UrlHinh") %>"/></td>
                            <td align="left" valign="top" colspan="2" style="border-bottom:1px dotted #f2f3f4; padding-left:10px;"><b>Mã sản phẩm:</b>
                                <asp:Label ID="lblMaSP" runat="server" Font-Bold="true" ForeColor="#009900" Text='<%# Eval("idSP") %>'></asp:Label>
                            </td>
                        </tr>

                        <tr class="dong">
                            <td align="left" valign="top" colspan="2" style="padding-left:10px"><b>Tên sản phẩm:</b>
                                <asp:Label ID="lblTenSP" runat="server" Font-Bold="true" ForeColor="#009900" Text='<%# Eval("TenSP") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="dong">
                            <td align="left" valign="top" colspan="2" style="padding-left:10px"><b>Màu sắc:</b>
                                <asp:Label ID="Label2" runat="server" Font-Bold="true" ForeColor="#009900" Text="Như hình"></asp:Label>
                            </td>           
                        </tr>
                        <tr class="dong">
                            <td align="left" valign="top" colspan="2" style="padding-left:10px"><b>Giá:</b>
                                <asp:Label ID="lblGia" runat="server" Font-Bold="true" ForeColor="red" Text='<%# Eval("Gia") %>'></asp:Label>
                                <b>vnđ</b>
                            </td>
                        </tr>
                        <tr class="dong">
                            <td align="left" valign="top" colspan="2" style="padding-left:10px"><b>Size:</b>
                                <asp:DropDownList ID="ddlSize" runat="server" DataSourceID="SqlDataSource1" DataTextField="Size" DataValueField="Size"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebThoiTrangConnectionString %>" SelectCommand="SELECT [Size] FROM [SanPham] WHERE ([idSP] = @idSP)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter Name="idSP" QueryStringField="idSP" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr class="dong">
                            <td align="left"  style="padding-left:10px"><b>Số lượng:</b>
                                <asp:TextBox ID="txtSL" runat="server" Width="40px" Text='1'></asp:TextBox>
                            </td>
                            <td align="left" style="padding-left:10px"> 
                                <asp:ImageButton ID="imgThemSP" runat="server" CommandName="Them" ImageUrl="~/Image/btn_addcart.gif"></asp:ImageButton>
                            </td>           
                        </tr>
                        <tr class="dong">
                            
                        </tr>
                
                        </table>
                        <p>
                            &nbsp;<h2><b>Mô tả sản phẩm:</b></h2> <asp:Label Font-Size="18px" ForeColor="#333333" 
                            runat="server" ID="lbMoTa" Text='<%#Eval("MoTa") %>'></asp:Label>
                            <p>
                            </p>
                            <p>
                            </p>
                            <p>
                            </p>
                            <p>
                            </p>
                            <p>
                            </p>
                        </p>
                    </ItemTemplate>
                </asp:DataList>    
            </td>
            <td valign="top" style="width:270px;">
                <div>
                    <div  class="tieude">Hổ trợ khác hàng</div>
                    <asp:DataList ID="dlHTKH" runat="server">
                            <ItemTemplate>
                                <table border="0px" cellspacing="0px" cellpadding="0px" style="width: 250px;font-size:0.8em; background-color:#f2f3f4;">
                                    <tr class="dong">
                                        <td>
                                            <table style="width: 270px;">
                                                <tr>
                                                    <td class="ha"><img src="../Image/nhacnho.png" /></td>
                                                    <td>
                                                        <asp:Label ID="lblLK" runat="server" Text='<%# Eval("LoiKhuyen") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="ha"><img src="../Image/phone.png" /></td>
                                                    <td>
                                                        <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("DienThoai") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="ha"><a href="http://gmail.com"><img src="../Image/email.png"/></a></td>
                                                    <td>
                                                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="ha"><a href="https://www.google.com/maps/place/450+L%C3%AA+V%C4%83n+Vi%E1%BB%87t,+T%C4%83ng+Nh%C6%A1n+Ph%C3%BA+A,+Qu%E1%BA%ADn+9,+H%E1%BB%93+Ch%C3%AD+Minh,+Vi%E1%BB%87t+Nam/@10.8462505,106.7952293,17z/data=!3m1!4b1!4m5!3m4!1s0x3175273e51ead073:0x4d574c7a50cbf584!8m2!3d10.8462452!4d106.797418"><img src="../Image/diachi.png"/></a></td>
                                                    <td>
                                                        <asp:Label ID="lblDiaChi" runat="server" Text='<%# Eval("DiaChi") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="ha"><img src="../Image/tgLamViec.png"/></td>
                                                    <td>
                                                        <asp:Label ID="lblTGLamViec" runat="server" Text='<%# Eval("TGLamViec") %>'></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td style="border-top:2px solid white; padding-bottom:30px;" colspan="2" align="center">
                                                        <br />
                                                        <asp:Label ID="lblChiNhanh" Font-Size="14" runat="server" Text='<%# Eval("ChiNhanhCoHang") %>'></asp:Label></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                    </asp:DataList>
               </div> 
            </td>
        </tr>
    </table>
    

    <div class="tieudeh2"> Sản phẩm cùng loại</div>
        <asp:DataList ID="dlSPCL" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="551px">
                <ItemTemplate>
                    <table>
                        <tr style="text-align: center">
                          <td>
                            <div class="motsp">
                                <a href="ChiTietSP.aspx?idSP=<%# Eval("idSP") %>">
                                    <img class="hinhsp" src="../Image/AnhSP/<%# Eval("UrlHinh") %>"/>
                                </a>
                                <div class="tensp"><%# Eval("TenSP") %></div>
                                <br />
                                <div class="giasp"><%# Eval("Gia", "{0:#,##0} vnđ") %></div>
                            </div>
                         </td>
                       </tr>
                    </table>
               </ItemTemplate>
        </asp:DataList>
</asp:Content>

