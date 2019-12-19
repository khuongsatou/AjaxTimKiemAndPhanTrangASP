<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default6.aspx.cs" Inherits="ValidateJQuery.Default6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Name:
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="return Validate();" />
        <script type="text/javascript">
            function Validate() {
                if (Page_ClientValidate()) {
                    return confirm('Do you want to submit data?');
                }
                return false;
            }
        </script>
    </form>
</body>
</html>
