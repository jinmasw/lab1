<?php
$c = $_GET['contraseña'];
comprobarPass($c);

function comprobarPass($c){
		
		$file = fopen("toppasswords.txt","r") or exit("No se ha podido abrir el archivo");
		$respuesta = 'VALIDA';
		$contrasena = trim($c);
		$a = fgets($file);
		while(!feof($file)){
			$a = trim(fgets($file));
			
			if($contrasena==$a){
				$respuesta = 'INVALIDA';
				break;
			}
		}
		fclose($file);
		echo $respuesta."";
}

?>