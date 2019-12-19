<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="ValidateJQuery.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.2.1.min.js"></script>
    <script src="jquery.validate.js"></script>
    <script type="text/javascript">                
        $(document).ready(function () {
            validateName();
        });

        function validateName() {
            $("#form1").validate();
            $('.txtName').rules('add', {
                required: true,
                rangelength: [3, 20],
                minlength:5,
                messages: {
                    required: "First name is required",
                    rangelength: "Name must 3 to 20 characters",
                    minlength: "lớn hơn 1 kí tự",
                },
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        Name
        <asp:TextBox ID="txtName" runat="server" class="txtName"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </form>
</body>
</html>
