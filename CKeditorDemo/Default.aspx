<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CKeditorDemo.Default" %>

<%@ Register Assembly="CKFinder" Namespace="CKFinder" TagPrefix="CKFinder" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" BasePath="/ckeditor/"></CKEditor:CKEditorControl>
            <asp:Panel ID="Panel1" runat="server" Visible="true">
                <asp:Label ID="lblpre" runat="server" Text=""></asp:Label>
            </asp:Panel>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

            <%--<CKFinder:FileBrowser ID="FileBrowser1" runat="server"></CKFinder:FileBrowser>--%>
        </div>
    </form>
</body>
</html>
