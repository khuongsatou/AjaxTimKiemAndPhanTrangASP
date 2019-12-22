<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getSession.aspx.cs" Inherits="ViewState.getSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
            </asp:CheckBoxList>
        </div>
    </form>
</body>
</html>
