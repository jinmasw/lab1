<?php

	require_once('lib/nusoap.php'); 
	require_once('lib/class.wsdlcache.php');
	
	//$ns="http://localhost/localhost"; 
	$ns = "http://jinmasw.esy.es/";
	$server = new soap_server(); 
	$server->configureWSDL('comprobarContrasena',$ns); 
	$server->configureWSDL('comprobarTicket',$ns); 
	$server->wsdl->schemaTargetNamespace=$ns; 
	
	$server->register('comprobarPass', array('c'=>'xsd:string','t'=>'xsd:string'), array('z'=>'xsd:string'), $ns);
	$server->register('comprobarTicket', array('t2'=>'xsd:string'), array('v'=>'xsd:string'), $ns);
	
	function comprobarPass($c,$t){
		if(strcmp(comprobarTicket($t),"SI")!=0 and strcmp($t,"0000")!=0)
		{
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
		else
		{
			return new soapval('z','xsd:string',"USUARIO NO AUTORIZADO");
		}
	}
	
	
	
	
		function comprobarTicket($t2)
		{
		$file2 = fopen("tickets.txt","r") or exit("No se ha podido abrir el archivo");
		$ticket = trim($t2);
		$a2 = fgets($file2);
		$autorizado = "NO";
		
		while(!feof($file2)){
			$a2 = trim(fgets($file2));
			
			if($ticket==$a2){
				$autorizado="SI";
				break;
			}
		}
		
		fclose($file2);
		return $autorizado;
		
	}

	$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA)?$HTTP_RAW_POST_DATA : ''; 
	$server->service($HTTP_RAW_POST_DATA);
	
	//$rawPostData = file_get_contents("php://input");
   // $server->service($rawPostData);
	
	
?>