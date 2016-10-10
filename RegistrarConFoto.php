<?php

$serv = "mysql.hostinger.es";
$usuario = "u311047301_admin";
$password = "admin123";
$bd = "u311047301_quiz";

//$serv = "127.0.0.1";
//$usuario = "root";
//$password = "";
//$bd = "quiz";

$val="$_POST[correo]";
$opt=array("options"=>array("regexp"=>"/[a-zA-z]+[0-9]{3}(@ikasle.ehu.e)u?(s)/"));
if(filter_var($val, FILTER_VALIDATE_REGEXP,$opt))
{
	$esp = $_POST['especialidad'];
	if ($esp == 'Otro'){
	$esp = $_POST['otra'];
	}

	$foto = addslashes(file_get_contents($_FILES['imagen']['tmp_name']));

	$link = mysqli_connect($serv,$usuario,$password,$bd);
	$sql = "INSERT INTO usuario VALUES ('$_POST[nombre]','$_POST[apellido_1]','$_POST[apellido_2]','$_POST[correo]','$_POST[telefono]','$_POST[contraseña]','$esp','$_POST[area_de_texto]','$foto')";
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
	echo "Introduce un email valido";
	echo "<p> <a href='registro.html'> Volver a la pagina de registro </a>";
}
?>