<?php
	session_start();
	$_SESSION['user']=null;
	echo '<meta http-equiv="refresh" content="0;url=index.php">';
?>
