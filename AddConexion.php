<?php
		
	//if(isset($_POST['pregunta'])){

		$serv = "mysql.hostinger.es";
		$usuario = "u311047301_admin";
		$password = "admin123";
		$bd = "u311047301_quiz";

		/*$serv = "127.0.0.1";
		$usuario = "root";
		$password = "";
		$bd = "quiz";*/
		
		
		$date = date('Y-m-d H:i:s');
		session_start();
		$correo = $_SESSION['login_email'];
		$_SESSION['fecha_sesion'] = $date;
		
		$link = mysqli_connect($serv,$usuario,$password,$bd);
		$sql = "INSERT INTO conexiones (correo,fecha_conexion) VALUES ('$correo','$date')";
		
		if (!mysqli_query($link ,$sql))
			{
				die('Error:' . mysqli_error($link));
			}
		//header("Location: InsertarPregunta.php");
		if($correo=='web000@ehu.es')
		{
			$usuario = 'profesor';
			$_SESSION['usuario'] = $usuario;
			if (isset($_SESSION['usuario']))
			{
				header("Location: Revisar.php");
			}
		}
		else
		{
			$usuario = 'alumno';
			$_SESSION['usuario'] = $usuario;
			if (isset($_SESSION['usuario']))
			{
				header("Location: GestionPreguntas.php");
			}
			
		}
	
		
		mysqli_close($link);
	//}
?>