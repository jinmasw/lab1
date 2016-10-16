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
?>