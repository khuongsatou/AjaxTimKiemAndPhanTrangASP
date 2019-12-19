<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModelBS.aspx.cs" Inherits="ValidateJQuery.ModelBS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="jquery-3.2.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <input onclick="abc();" id="Button1" type="button" value="button"  data-toggle="modal" class="btn btn-primary btn-sm" />
                    <div class="modal" id="loginModal" tabindex="-1" data-backdrop="static" style="margin-top: 200px">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header col-md-8 offset-4">
                                    Thêm Thành Công
                                    <button class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-footer">
                                    <asp:Button CssClass="btn btn-primary" ID="Button4" runat="server" data-dismiss="modal" Text="Close" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function abc() {
                $("#Button1").attr('data-target','#loginModal');
            }
        </script>
    </form>
</body>
</html>
