<?php

header('Content-Type: text/html; charset=utf-8');

$serv = "mysql.hostinger.es";
$usuario = "u311047301_admin";
$password = "admin123";
$bd = "u311047301_quiz";

//$serv = "127.0.0.1";
//$usuario = "root";
//$password = "";
//$bd = "quiz";

require_once 'validaciones.php';

	$nombre = $_POST['nombre'];
	$apellido_1 = $_POST['apellido_1'];
	$apellido_2 = $_POST['apellido_2'];
	$correo = $_POST['correo'];
	$telefono = $_POST['telefono'];
	$contraseña = $_POST['contraseña'];
	$esp = $_POST['especialidad'];
	$foto = addslashes(file_get_contents($_FILES['imagen']['tmp_name']));
	
	$errores = array();
	
	if ($esp == 'Otro')
	{
	$esp = $_POST['otra'];
	}
	if (!validarNombre($nombre)) {
      $errores[] = 'El campo nombre es incorrecto.';
	}
	if (!validarNombre($apellido_1)) {
      $errores[] = 'El campo apellido 1 es incorrecto.';
	}
	if (!validarNombre($apellido_2)) {
      $errores[] = 'El campo apellido 2 es incorrecto.';
	}
	if (!validarPass($contraseña)) {
      $errores[] = 'El campo contraseña es incorrecto.';
	}
	if (!validarEmail($correo)) {
      $errores[] = 'El campo correo es incorrecto.';
	}
	
	if(!$errores){
	$link = mysqli_connect($serv,$usuario,$password,$bd);
	$sql = "INSERT INTO usuario VALUES ('$nombre','$apellido_1','$apellido_2','$correo','$telefono','$contraseña','$esp','$_POST[area_de_texto]','$foto')";
	if (!mysqli_query($link ,$sql))
	{
		die('Error:' . mysqli_error($link));
	}

	echo "1 record added";
	echo "<p> <a href='VerUsuariosConFoto.php'> Ver usuarios </a>";
	mysqli_close($link);
	}
	else
	{
		foreach ($errores as $error):
			echo $error;
			echo "<br>";
		endforeach;
		echo "<p> <a href='Registro.html'> Volver a introducir datos </a>";
	}

?>