<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="ViewState.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnDem" runat="server" Text="Đếm" OnClick="btnDem_Click" />
        </div>
    </form>
</body>
</html>
