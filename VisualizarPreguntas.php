<?php
$serv = "mysql.hostinger.es";
$usuario = "u311047301_admin";
$password = "admin123";
$bd = "u311047301_quiz";

//$serv = "127.0.0.1";
//$usuario = "root";
//$password = "";
//$bd = "quiz";

$link = mysqli_connect($serv, $usuario, $password, $bd);
$preguntas = mysqli_query($link, "select pregunta,dificultad,email_autor from pregunta" );
echo '<table border=1> <tr> <th> PREGUNTA </th> <th> DIFICULTAD </th> <th> AUTOR </th>
</tr>';
while ($row = mysqli_fetch_array( $preguntas )) {
echo '<tr><td>' . $row['pregunta'] . '</td> <td>' . $row['dificultad'] . '</td> <td>' . $row['email_autor'] . '</td>';
}
echo '</table>';

$preguntas->close();

mysqli_close($link);




$ip = $_SERVER['REMOTE_ADDR'];
$hora =  date('Y-m-d H:i:s');

$link = mysqli_connect($serv, $usuario, $password, $bd);
$sql = "INSERT INTO acciones (tipoAccion,hora,ip) values ('VisualizarPreguntas','$hora','$ip')";

if (!mysqli_query($link ,$sql))
	{
		die('Error:' . mysqli_error($link));
	}
	
mysqli_close($link);
?>