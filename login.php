<html>

<head>

<title> Login </title>

<head>

<body>
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
		<br>
		<br>
		
		<input type="button" name="olvido" value="¿Ha olvidado la contrasena?" onclick="document.getElementById('cambio').style.display = 'inline'">

		<br>
		<br>
					
		<div id="cambio" style="display:none">
		
		<form id='cambio2' name='cambio2' method="post" enctype="multipart/form-data" ACTION="cambioContrasena.php">
		
			Direccion de correo: <input type= "text"
			name="correo2"
			id="correo2"
			value="">
			
			<br>
		
			Introduzca la nueva contrasena: <input type= "password"
			name="nueva"
			id="nueva"
			value="">
			
			<br>
			<br>
			
			<input type="submit" value="Cambiar contrasena">
			
			<br>
			
		</form>
		</div>	
	
<body>

</html>

<?php	

session_start();

if(isset($_POST['correo']))
{
	$serv = "mysql.hostinger.es";
	$usuario = "u311047301_admin";
	$password = "admin123";
	$bd = "u311047301_quiz";

	/*$serv = "127.0.0.1";
	$usuario = "root";
	$password = "";
	$bd = "quiz";*/

	$link = mysqli_connect($serv, $usuario, $password, $bd) or die(mysql_error());
	
	$contraseña = $_POST['contraseña'];
	$contraseña = sha1($contraseña);
	$correo = $_POST['correo'];
	
	if($_SESSION['correo'] != $correo)
	{
		$_SESSION['correo']=$correo;
		$_SESSION['intentos'] = 0;
	}
	
	$usuario= mysqli_query($link,"SELECT * FROM usuario WHERE email='$correo' and password='$contraseña'");
	$bloqueo= mysqli_query($link,"SELECT bloqueado FROM usuario WHERE email='$correo'");
	$cont = mysqli_num_rows($usuario);
	$bloq="";
	$bloq= $bloqueo->fetch_assoc();
	//echo $bloqueo;
	//echo $bloq['bloqueado'];
	
	if ($bloq['bloqueado'] == "SI")
	{
		echo "<script>javascript: alert('Cuenta bloqueada por exceso de fallos') </script>";
		mysqli_close($link);
		/*header("Location: login.php");	*/
	}
	
	else if ($cont==1)
	{
		$_SESSION['login_email'] = $correo;
		mysqli_close($link);
		header("Location: AddConexion.php");
	}
	else
	{
		if(isset($_POST['contraseña']))
		{
			$_SESSION['intentos'] = $_SESSION['intentos'] + 1;
			echo 'Credenciales no válidas';
			echo '<br>';
			
			if ($_SESSION['intentos'] == 3 ){
				echo 'Cuenta bloqueada por exceso de fallos';
				mysqli_query($link,"update usuario set bloqueado='SI' where EMAIL='$correo'");
			}
		}
		mysqli_close($link);
		echo '<br>';
		echo '<a href="layout.html"> Volver a la pagina principal </a>';
	}

}

else
{
	$_SESSION['correo'] = 'aaa';
	$_SESSION['intentos'] = 0;
}
 ?>