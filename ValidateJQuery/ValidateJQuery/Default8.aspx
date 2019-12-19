<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default8.aspx.cs" Inherits="ValidateJQuery.Default8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">
                    A
                </asp:ListItem>
                <asp:ListItem Value="2">
                    B
                </asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
