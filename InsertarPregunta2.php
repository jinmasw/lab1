<?php
		
	$serv = "mysql.hostinger.es";
	$usuario = "u311047301_admin";
	$password = "admin123";
	$bd = "u311047301_quiz";

	//$serv = "127.0.0.1";
	//$usuario = "root";
	//$password = "";
	//$bd = "quiz";
	
	sleep(2);
	
	$pregunta = $_GET['pregunta'];
	$respuesta = $_GET['respuesta'];
	$dificultad = $_GET['dificultad'];
	$tematica = $_GET['tematica'];
	
	session_start();
	$correo = $_SESSION['login_email'];
	$date_sesion = $_SESSION['fecha_sesion'];
	$hora =  date('Y-m-d H:i:s');
	$_SESSION['ip'] = $_SERVER['REMOTE_ADDR']; 
	$ip = $_SESSION['ip'];
	
	$link = mysqli_connect($serv,$usuario,$password,$bd);
	$sql = "INSERT INTO pregunta (pregunta,respuesta,dificultad,email_autor,tematica) VALUES ('$pregunta','$respuesta','$dificultad','$correo','$tematica')";
	
	if (!mysqli_query($link ,$sql))
		{
			die('Error:' . mysqli_error($link));
		}

	echo "Se ha añadido una pregunta a la BD";
	//echo '<a href="GestionPreguntas.php"> Añadir otra pregunta </a>';
	
	$xml = simplexml_load_file('preguntas.xml');
	$assessmentItem = $xml->addChild('assessmentItem');
	$assessmentItem->addAttribute('complexity',$dificultad);
	$assessmentItem->addAttribute('subject',$tematica);
	
	$itemBody = $assessmentItem->addChild('itemBody');
	$itemBody->addChild('p',$pregunta);
	
	$correctResponse = $assessmentItem->addChild('correctResponse');;
	$correctResponse->addChild('value',$respuesta);
	
	if (!$xml->asXML('preguntas.xml'))
	{
		die('Error: la insercion no ha sido posible');
	}
	
	echo "<br>";
	echo "Se ha añadido una pregunta al XML";
	//echo '<a href="VerPreguntasXML.php"> Ver las preguntas del XML </a>';
	
	mysqli_close($link);
	
	$link = mysqli_connect($serv,$usuario,$password,$bd);
	$conexion = mysqli_query($link,"SELECT conexion FROM conexiones WHERE fecha_conexion='$date_sesion'");
	$row = mysqli_fetch_array( $conexion );
	$identificadorConexion = $row['conexion'];
	
	$sql2 = "INSERT INTO acciones (identificadorConexion,correoUsuario,tipoAccion,hora,ip) values ('$identificadorConexion','$correo','InsertarPregunta','$hora','$ip')";
	
	if (!mysqli_query($link ,$sql2))
		{
			die('Error:' . mysqli_error($link));
		}
	
	mysqli_close($link);
?>