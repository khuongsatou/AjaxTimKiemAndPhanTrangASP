<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UploadImageAjax.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="btnUpload" Text="Upload" runat="server" OnClick="Upload" />

    </form>
</body>
</html>
