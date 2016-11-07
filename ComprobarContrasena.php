<?php

	require_once('lib/nusoap.php'); 
	require_once('lib/class.wsdlcache.php');
	
	$ns="http://localhost/localhost"; 
	//$ns = "http://jinmasw.esy.es/";
	$server = new soap_server(); 
	$server->configureWSDL('comprobarContrasena',$ns); 
	$server->wsdl->schemaTargetNamespace=$ns; 
	
	$server->register('comprobarPass', array('c'=>'xsd:string'), array('z'=>'xsd:string'), $ns);

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
		
		
		
		
		return new soapval('z','xsd:string',$respuesta);
	}
	
	$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA)?$HTTP_RAW_POST_DATA : ''; 
	$server->service($HTTP_RAW_POST_DATA);
	
	//$rawPostData = file_get_contents("php://input");
   // $server->service($rawPostData);
	
	
?>