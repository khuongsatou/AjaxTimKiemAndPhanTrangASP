<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HienThiAll.aspx.cs" Inherits="KtraASPX.HienThiAll" %>

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
                <td>Giá Từ</td>
                <td>
                    <asp:TextBox TextMode="Number" ID="txtGiaTu" runat="server"></asp:TextBox>
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
                <td></td>
                <td>
                    <asp:Button ID="btnTim" runat="server" Text="Tìm" OnClick="btnTim_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>

        </table>




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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbKTraConnectionString %>" SelectCommand="SELECT * FROM [SanPham] ORDER BY [Gia] DESC"></asp:SqlDataSource>
    </form>
</body>
</html>
