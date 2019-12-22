<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img id="img" src="" />
        <br />
        <input type="button" id="cmdSelect" value="Select"/>
    </div>
    </form>
  
    <script src="jquery-1.11.3.min.js"></script>
    <script src="ckfinder/ckfinder.js"></script>
    <script>
        var finder = new CKFinder();
        $("#cmdSelect").click(function () {
            finder.selectActionFunction = function (fileUrl) {
                $("#img").attr("src", fileUrl);
            };
            finder.popup();
        });
    </script>
</body>
</html>
