<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default5.aspx.cs" Inherits="ValidateJQuery.Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-3.2.1.min.js"></script>
    <script>
		function() {

        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
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
