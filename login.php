<html>

	<form id='registro' name='registro' method="post" enctype="multipart/form-data" ACTION="login.php">
	
	Direccion de correo: <input type= "text"
			name="correo"
			id="correo"
			value="">
			
			<br>
			
	Password: <input type= "password"
			name="contraseña"
			id="contraseña"
			value="">
			
			<br>
		<input type="submit" value="Enviar">	
	</form>	

</html>

<?php	
if(isset($_POST['correo']))
{
	//$serv = "mysql.hostinger.es";
	//$usuario = "u311047301_admin";
	//$password = "admin123";
	//$bd = "u311047301_quiz";

	$serv = "127.0.0.1";
	$usuario = "root";
	$password = "";
	$bd = "quiz";

	$link = mysqli_connect($serv, $usuario, $password, $bd) or die(mysql_error());
	
	$contraseña = $_POST['contraseña'];
	$correo = $_POST['correo'];
	

	$usuario= mysqli_query($link,"SELECT * FROM usuario WHERE email='$correo' and password='$contraseña'");
	$cont = mysqli_num_rows($usuario);
	
	mysqli_close($link);
	
	if ($cont==1)
	{
		session_start();
		$_SESSION['login_email'] = $correo;
		header("Location: AddConexion.php");
	}
	else
	{
		echo 'Credenciales no válidas';
		echo '<br>';
		echo '<a href="layout.html"> Volver a la pagina principal </a>';
	}
	
	
}
 ?>