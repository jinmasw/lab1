<html>
	<head>
		<title> Insertar Pregunta </title>
	</head>
	<body>
		<form id='insertarPregunta' name='insertarPregunta' method="post" enctype="multipart/form-data" ACTION="InsertarPregunta.php">
	
			Pregunta: <input type= "text"
			name="pregunta"
			id="pregunta"
			value="">
			
			<br>
			
			Respuesta: <input type= "text"
			name="respuesta"
			id="respuesta"
			value="">
			
			<br>
			
			Dificultad: <input type= "number"
			name="dificultad"
			id="dificultad"
			value="">
			
			<br>
			
		<input type="submit" value="Enviar">	
	</form>	
		
	</body>
</html>

<?php
		
	if(isset($_POST['pregunta'])){

		$serv = "mysql.hostinger.es";
		$usuario = "u311047301_admin";
		$password = "admin123";
		$bd = "u311047301_quiz";

		//$serv = "127.0.0.1";
		//$usuario = "root";
		//$password = "";
		//$bd = "quiz";
		
		$pregunta = $_POST['pregunta'];
		$respuesta = $_POST['respuesta'];
		$dificultad = $_POST['dificultad'];
		session_start();
		$correo = $_SESSION['login_email'];
		
		$link = mysqli_connect($serv,$usuario,$password,$bd);
		$sql = "INSERT INTO pregunta (pregunta,respuesta,dificultad,email_autor) VALUES ('$pregunta','$respuesta','$dificultad','$correo')";
		
		if (!mysqli_query($link ,$sql))
			{
				die('Error:' . mysqli_error($link));
			}

		echo "Se ha añadido una pregunta";
		echo '<a href="InsertarPregunta.php"> Añadir otra pregunta </a>';
		
		mysqli_close($link);
	}
?>