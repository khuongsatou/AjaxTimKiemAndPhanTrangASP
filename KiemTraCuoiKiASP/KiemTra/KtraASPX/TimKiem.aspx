<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="KtraASPX.TimKiem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;">
            <tr>
                <td>Tên SP:</td>
                <td>
                    <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Tất Cả</td>
                <td>
                    <asp:Button ID="btnTatCa" runat="server" Text="Tất Cả" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Giá Từ</td>
                <td>
                    <asp:TextBox TextMode="Number" ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Giá Đến</td>
                <td>
                    <asp:TextBox ID="txtGiaDen" runat="server" TextMode="Number"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Tên</td>
                <td>
                    <asp:RadioButton ID="radTen" runat="server" />
                </td>


            </tr>
            <tr>
                <td>Loại</td>
                <td>
                    <asp:RadioButton ID="radLoai" runat="server" /></td>
            </tr>
            <tr>
                <td>Cả 2</td>
                <td>
                    <asp:RadioButton ID="radCa2" runat="server" /></td>
            </tr>
        </table>
        <asp:Label ID="lblKetQua" runat="server" Text="Số Lượng:"></asp:Label>
        <table style="width: 100%;">
             <tr>
                <th>ID</th>
                <th>Tên SP</th>
                <th>Hình ảnh</th>
                <th>Giá</th>
   
            </tr>
          
        
        <asp:Repeater ID="rptSanPham" runat="server">
            <ItemTemplate>
            <tr>
                <td><%# Eval("ID") %></td>
                <td><%# Eval("TenSP") %></td>
                <td>
                    <asp:Image Width="50" Height="50" ID="Image1" runat="server" ImageUrl='<%# "~/img/"+Eval("HinhAnh") %>' /></td>
                <td>
                    <%# Eval("Gia") %>
                </td>
            </tr>
            </ItemTemplate>
        </asp:Repeater>
            </table>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <a href="?page=<%#Eval("index") %>&key=<% if (Request["key"] != null) Response.Write(Request["key"]); %>"
                        style='color:<%# (Convert.ToInt32(Eval("active")) == 0 ? "black" : "aqua") %>'
                        ><%#Eval("index") %></a>
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKTraConnectionString %>" SelectCommand="SELECT * FROM [SanPham] ORDER BY [Gia] DESC"></asp:SqlDataSource>


    </form>
</body>
</html>
