<?php
session_start();
if (isset($_SESSION['usuario']))
{
	if($_SESSION['usuario']=='profesor')
	{
?>
<html>
<head>
<title> Revisar </title>

</head>
<body>
	<span><a href='layout.php'>Inicio</a></spam>

<form id='revisar' name='revisar' method="post" enctype="multipart/form-data" ACTION="Revisar.php">
	Indica el indice de la pregunta que quieres modificar: <input type= "number"
			name="indice"
			id="indice"
			value="">
			
			<br>
			
	Modificar Pregunta: <input type= "text"
			name="pregunta"
			id="pregunta"
			value="">
			
			<br>
			
	Modificar Respuesta: <input type= "text"
			name="respuesta"
			id="respuesta"
			value="">
			
			<br>
			
	Modificar Dificultad: <input type= "number"
			name="dificultad"
			id="dificultad"
			value="">
			
			<br>
			
			<br>
			
	<input type="submit" value="Modificar pregunta" >
			
</form>


</body>
</html>
<?php

/*session_start();
if (!isset($_SESSION['login_email']) or strcmp($_SESSION['login_email'],"web000@ehu.es")){
	header("Location: login.php");
}*/


$serv = "mysql.hostinger.es";
$usuario = "u311047301_admin";
$password = "admin123";
$bd = "u311047301_quiz";

/*$serv = "127.0.0.1";
$usuario = "root";
$password = "";
$bd = "quiz";*/

$link = mysqli_connect($serv, $usuario, $password, $bd);
$preguntas = mysqli_query($link, "select indice, pregunta, respuesta, dificultad, email_autor from pregunta" );
echo '<table border=1> <tr> <th> INDICE </th> <th> PREGUNTA </th> <th> RESPUESTA </th> <th> DIFICULTAD </th> <th> AUTOR </th>
</tr>';
while ($row = mysqli_fetch_array( $preguntas )) {
echo '<tr> <td>' . $row['indice'] . '</td> <td>' . $row['pregunta'] . '</td> <td>' . $row['respuesta'] . '</td> <td>' . $row['dificultad'] . '</td> <td>' . $row['email_autor'] . '</td>';
}
echo '</table>';

$preguntas->close();

mysqli_close($link);



if(isset($_POST['indice'])){
	
	$id = $_POST['indice'];
	$enunciado = $_POST['pregunta'];
	$respuesta = $_POST['respuesta'];
	$dificultad = $_POST['dificultad'];
	
	$link = mysqli_connect($serv, $usuario, $password, $bd);
	
	if(strcmp($enunciado,"")!=0)
	{
		$sql = "UPDATE pregunta SET pregunta='$enunciado' WHERE indice='$id'";
		if (!mysqli_query($link ,$sql))
			{
				echo'fallo en 1';
				die('Error:' . mysqli_error($link));
				
			}
	}
	
	if (strcmp($respuesta,"")!=0)
	{
		$sql2 = "update pregunta set respuesta='$respuesta' where indice='$id'";
		if (!mysqli_query($link ,$sql2))
			{
				echo'fallo en 2';
				die('Error:' . mysqli_error($link));
			}
	}
	
	if (strcmp($dificultad,"")!=0)
	{
		$sql3 = "update pregunta set dificultad='$dificultad' where indice='$id'";
		if (!mysqli_query($link ,$sql3))
			{
				echo'fallo en 3';
				die('Error:' . mysqli_error($link));
			}
	}

	echo "Se ha modificado la pregunta";
	echo '<a href="Revisar.php"> Modificar otra pregunta </a>';
		
	mysqli_close($link);
	
}
}
else
	{
		header("Location: Login.php");
	}
}
	else
	{
		header("Location: Login.php");
	}
?>