<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidateJQuery.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="jquery-3.2.1.min.js"></script>
    <script src="jquery.validate.js"></script>
    <script type="text/javascript">                
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    <%=txtName.UniqueID %>:{
                     required: true,
                     rangelength: [3, 20],
                    },
                },
                messages: {
                    <%=txtName.UniqueID %>:{
                        required: "first name is required",
                        rangelength: "Name must between {3} to {20} characters",
                    },
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        Name
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </form>
</body>
</html>
