<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FreeTextBoxDemo.Default" ValidateRequest="false" %>

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
            <FTB:FreeTextBox ID="FreeTextBox1" AutoGenerateToolbarsFromString="false"
                runat="Server">
                <Toolbars>
                    <FTB:Toolbar runat="server">
                        <FTB:ParagraphMenu runat="server" />
                        <FTB:FontSizesMenu runat="server" />
                    </FTB:Toolbar>
                    <FTB:Toolbar runat="server">
                        <FTB:Bold runat="server" />
                        <FTB:Italic runat="server" />
                        <FTB:Underline runat="server" />
                        <FTB:ToolbarSeparator runat="server" />
                        <FTB:BulletedList runat="server" />
                        <FTB:NumberedList runat="server" />
                    </FTB:Toolbar>
                    <FTB:Toolbar runat="server">
                        <FTB:InsertHtmlMenu runat="server">
                            <Items>
                                <FTB:ToolbarListItem Text="Cool1" Value="<b>lalala</b>" runat="server" />
                                <FTB:ToolbarListItem Text="Cool2" Value="<i>lalala</i>" runat="server" />
                                <FTB:ToolbarListItem Text="Cool3" Value="<u>lalala</u>" runat="server" />
                            </Items>
                        </FTB:InsertHtmlMenu>
                    </FTB:Toolbar>
                </Toolbars>
            </FTB:FreeTextBox>
            <asp:Button ID="Button1" runat="server" Text="getTextFree" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
