<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUC_DanhMuc.ascx.cs" Inherits="Web_WUC_DanhMuc" %>
<script>
    $(document).ready(function () {
        //ẩn div loại sp
        $(".chungloaisp").next().hide();
        
        //$(".chungloaisp:first").next().show();
        ////bấm chủng loại nào thì ẩn/hiện
        $(".chungloaisp").click(function () {
            $(this).next().slideToggle();
            
        });
    });
</script>
<div id="danhmuc">
    <asp:ListView ID="lvChungLoai" runat="server" OnItemDataBound="lvChungLoai_ItemDataBound">
        <ItemTemplate>
            <asp:HiddenField ID="hfChungLoai" Value='<%# Eval("idCL") %>' runat="server" />
            <div class="chungloaisp">
                <b><%# Eval("TenCL") %></b>
            </div>
            <%--listview hien thi loai sp theo chung loại--%>
            <div class="sanpham">
                <asp:ListView ID="lvLoaiSP" runat="server">
                    <ItemTemplate>
                        <a href='SPTheoLoai.aspx?idLoai=<%# Eval("idLoai") %>'>
                            <%# Eval("TenLoai") %> (<%# Eval("SoLuong") %>)
                        </a>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </ItemTemplate>
    </asp:ListView>
</div>
