<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ValidateJQuery.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.2.1.min.js"></script>
    <script src="ajax.js"></script>
</head>
<body>
    <form id="form1" runat="server">

        <%--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
        <input id="Text1" type="text" onfocusout="search(1);" />
        <table style="width: 100%;" id="result">
        </table>

        <div id="record">
        </div>

    </form>
</body>
</html>
