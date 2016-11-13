<?php

	/*$serv = "mysql.hostinger.es";
	$usuario = "u311047301_admin";
	$password = "admin123";
	$bd = "u311047301_quiz";*/

	$serv = "127.0.0.1";
	$usuario = "root";
	$password = "";
	$bd = "quiz";
	
	session_start();
	$correo = $_SESSION['login_email'];//"jgonzalez001@ikasle.ehu.es"
	

	$sql1 = "select * from pregunta";
	$sql2 = "select * from pregunta where email_autor = '$correo'";
	
	$link = mysqli_connect($serv,$usuario,$password,$bd);
	
	$preguntasTotales = mysqli_query($link,$sql1);
	//mysqli_close($link);
	
	$preguntasUsuario = mysqli_query($link,$sql2);
	mysqli_close($link);
	
	$preguntasTotales2 = mysqli_num_rows($preguntasTotales); 
	$preguntasUsuario2 = mysqli_num_rows($preguntasUsuario);
	
	
	echo 'Tus preguntas/Preguntas totales: '.$preguntasUsuario2.'/'.$preguntasTotales2;
?>