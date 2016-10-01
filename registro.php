<?php

$serv = "mysql.hostinger.es";
$usuario = "u311047301_admin";
$password = "admin123";
$bd = "u311047301_quiz";

//$serv = "localhost";
//$usuario = "root";
//$password = "";
//$bd = "quiz";

$esp = $_POST['especialidad'];
if ($esp == 'Otro'){
	$esp = $_POST['otra'];
}

$link = mysqli_connect($serv, $usuario, $password, $bd);
$sql = "INSERT INTO usuario VALUES ('$_POST[nombre]','$_POST[apellido_1]','$_POST[apellido_2]','$_POST[correo]','$_POST[telefono]','$_POST[contraseña]','$esp','$_POST[area_de_texto]')";
if (!mysqli_query($link ,$sql))
{
	die('Error:' . mysqli_error($link));
}
echo "1 record added";
echo "<p> <a href='VerUsuarios.php'> Ver usuarios </a>";
mysqli_close($link);
?>