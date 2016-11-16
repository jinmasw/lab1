<?php	
	$serv = "mysql.hostinger.es";
	$usuario = "u311047301_admin";
	$password = "admin123";
	$bd = "u311047301_quiz";

	/*$serv = "127.0.0.1";
	$usuario = "root";
	$password = "";
	$bd = "quiz";*/

	$link = mysqli_connect($serv, $usuario, $password, $bd) or die(mysql_error());
	
	$correo = $_POST['correo2'];
	$contraseña2 = $_POST['nueva'];
	$contraseña2 = sha1($contraseña2);
	

	mysqli_query($link,"update usuario set password='$contraseña2' where email='$correo'");
	
	mysqli_close($link);
	
	header("Location: login.php");	
	
 ?>