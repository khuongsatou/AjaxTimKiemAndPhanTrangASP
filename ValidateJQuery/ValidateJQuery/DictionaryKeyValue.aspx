<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DictionaryKeyValue.aspx.cs" Inherits="ValidateJQuery.DictionaryKeyValue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" Text="getKey" OnClick="Click1" />
            <asp:Button ID="Button2" runat="server" Text="string" OnClick="Click2"/>
             <asp:Button ID="Button3" runat="server" Text="string" OnClick="Click3"/>
            <asp:Button ID="Button4" runat="server" Text="foreach" OnClick="Click4"/>
             <asp:Button ID="Button5" runat="server" Text="for" OnClick="Click5"/>
             <asp:Button ID="Button6" runat="server" Text="getIndex" OnClick="Click6"/>
            <asp:Button ID="Button7" runat="server" Text="parse" OnClick="Click7"/>
            <asp:Button ID="Button8" runat="server" Text="contains" OnClick="Click8"/>
            <asp:Button ID="Button9" runat="server" Text="Json" OnClick="Click9"/>
        </div>
    </form>
</body>
</html>
