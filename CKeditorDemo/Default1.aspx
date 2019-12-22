<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="CKeditorDemo.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <textarea id="TextArea1" cols="20" rows="2"></textarea>
        </div>
        <script src="ckeditor/adapters/jquery.js"></script>
        <script src="ckeditor/ckeditor.js"></script>
        <script>
            CKEDITOR.replace('TextArea1', {
                filebrowserBrowseUrl: '/ckfinder/ckfinder.html',
                filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?type=Images',
                filebrowserFlashBrowseUrl: '/ckfinder/ckfinder.html?type=Flash',
                filebrowserUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files',
                filebrowserImageUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images',
                filebrowserFlashUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash',
                filebrowserWindowWidth: '1000',
                filebrowserWindowHeight: '700'
            });
        </script>
    </form>
</body>
</html>
