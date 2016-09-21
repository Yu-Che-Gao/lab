<html>
	<head>
		<meta charset="utf-8">
		<title>log in</title>
	</head>
	<body>
		<h1>會員登入</h1>
		<form action="sign_do.php" method ="POST">
			<b>帳號:</b><input type="text" class="form-control" id="user" name="user" placeholder="請輸入帳號"/><br/>
			<b>密碼:</b><input type="password"  class="form-control" id="psw" name="psw" placeholder="請輸入密碼" style="margin-top:10px;"/><br/>
			<div style="margin-top:10px;">
			<input type="submit" value="登入"/>
			<input type="reset" style="margin-left:10px;">
			</div>
		</form>
		<?php 
			echo $_POST["name"]; ?><br>
			your password: <?php echo $_POST["psw"]; ?>
	</body>
</html>