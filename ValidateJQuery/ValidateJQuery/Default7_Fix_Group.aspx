<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default7_Fix_Group.aspx.cs" Inherits="ValidateJQuery.Default7_Fix_Group" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.2.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtName" runat="server" ValidationGroup="v" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="txtName" ValidationGroup="v" ></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="c" />
        <asp:RequiredFieldValidator runat="server" ErrorMessage="Required" ControlToValidate="TextBox1" ValidationGroup="c"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="Submit" ValidationGroup="v" Text="Submit" OnClientClick="return Validate();" />
        <asp:Button ID="Button1" runat="server" OnClick="Submit" ValidationGroup="c" Text="Submit" OnClientClick="return Validate();" />
        <script type="text/javascript">
            function Validate() {
                if (Page_ClientValidate('v')) {
                    alert("OK");
                    return false;
                }
                return false;
            }
        </script>
    </form>
</body>
</html>
