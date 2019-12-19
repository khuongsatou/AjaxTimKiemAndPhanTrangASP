<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Seach.aspx.cs" Inherits="ValidateJQuery.Seach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
            <input id="Text1" type="text" onfocusout="search();" />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="STT">
                <ItemTemplate>
                    STT:
                    <asp:Label ID="STTLabel" runat="server" Text='<%# Eval("STT") %>' />
                    <br />
                    TenSP:
                    <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                    <br />
                    GiaSP:
                    <asp:Label ID="GiaSPLabel" runat="server" Text='<%# Eval("GiaSP") %>' />
                    <br />
                    MoTa:
                    <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                    <br />
                    HinhAnh:
                    <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
                    <br />
                    Quality:
                    <asp:Label ID="QualityLabel" runat="server" Text='<%# Eval("Quality") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" SelectCommand="SELECT * FROM [tbSanPham]"></asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <a href="?page=<%#Eval("index") %>&key=<% if (Request["key"] != null) Response.Write(Request["key"]); %>"
                        style='color:<%# (Convert.ToInt32(Eval("active")) == 0 ? "black" : "aqua") %>'
                        ><%#Eval("index") %></a>
                </ItemTemplate>
            </asp:Repeater>

        </div>
        <script src="jquery-3.2.1.min.js"></script>
        <script src="ajax.js"></script>
    </form>
</body>
</html>
