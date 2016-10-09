<?php

//$serv = "mysql.hostinger.es";
//$usuario = "u311047301_admin";
//$password = "admin123";
//$bd = "u311047301_quiz";

$serv = "127.0.0.1";
$usuario = "root";
$password = "";
$bd = "quiz";

$link = mysqli_connect($serv, $usuario, $password, $bd);
$usuarios = mysqli_query($link, "select * from usuario" );
echo '<table border=1> <tr> <th> NOMBRE </th> <th> APELLIDO 1 </th> <th> APELLIDO 2 </th> <th> EMAIL </th> <th> TELEFONO </th> <th> PASSWORD </th> <th> ESPECIALIDAD </th> <th> TECNOLOGIAS </th> <th> imagen </th>
</tr>';
while ($row = mysqli_fetch_array( $usuarios )) {
echo '<tr><td>' . $row['NOMBRE'] . '</td> <td>' . $row['APELLIDO1'] . '</td> <td>' . $row['APELLIDO2'] . '</td> <td>' . $row['EMAIL'] . '</td> <td>' . $row['TELEFONO'] . '</td> <td>' . $row['PASSWORD'] . '</td> <td>' . $row['ESPECIALIDAD'] . '</td> <td>' . $row['TECNOLOGIAS'] ."</td> <td> <img src='data:imagen/jpeg;base64,".base64_encode( $row['imagen'] )."' width='100px' /></td>";
}
echo '</table>';
$usuarios->close();
mysqli_close($link);

?>