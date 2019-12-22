<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="FreeTextBoxDemo.Default1" %>
<%@ Register TagPrefix="FTB"
    Namespace="FreeTextBoxControls"
    Assembly="FreeTextBox" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <FTB:ImageGallery ID="ImageGallery1"
                AllowImageDelete="true" JavaScriptLocation="InternalResource" UtilityImagesLocation="InternalResource"
                AllowImageUpload="False" AllowDirectoryCreate="true" AllowDirectoryDelete="true" runat="Server" />
        </div>
        <div class="col-md-6">
            <div class="col-md-8">
                <asp:FileUpload runat="server" ID="fileupload1" CssClass="form-control" AllowMultiple="False" />
            </div>
            <div class="col-md-4">
                <asp:Button runat="server" Text="UPLOAD" CssClass="btn btn-success" ID="btnsumbit" OnClick="btnsumbit_OnClick" />
            </div>
        </div>
    </form>
</body>
</html>
