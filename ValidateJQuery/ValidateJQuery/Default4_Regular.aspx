<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default4_Regular.aspx.cs" Inherits="ValidateJQuery.Default4_Regular" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style>
		label.error{
			color: red;
		}
	</style>
    <script src="jquery-3.2.1.min.js"></script>
    <script src="jquery.validate.js"></script>
	<script>
        $().ready(function () {
            $.validator.addMethod("validatePassword", function (value, element) {
                return this.optional(element) || /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$/i.test(value);
            }, "Hãy nhập password từ 8 đến 16 ký tự bao gồm chữ hoa, chữ thường và ít nhất một chữ số");

            $("#demoForm").validate({
                onfocusout: true,
                onkeyup: true,
                onclick: false,
                rules: {
                    "user": {
                        required: true,
                        maxlength: 15
                    },
                    "password": {
                        required: true,
                        validatePassword: true,
                        minlength: 8
                    },
                    "re-password": {
                        equalTo: "#password",
                        minlength: 8
                    }
                }
            });
        });

	</script>
</head>
<body>
    <form id="demoForm" runat="server">
       <p>
			<label>Username</label>
			<input name="user" type="text" />
		</p>
		<p>
			<label>Password</label>
			<input id="password" type="password" name="password" />
		</p>
		<p>
			<label>Re-Password</label>
			<input id="re-password" type="password" name="re-password" />
		</p>
		<p>
		<input type="submit" value="Register" id="register"/>
		</p>
    </form>
</body>
</html>
