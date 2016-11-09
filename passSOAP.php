<?php

	require_once('lib/nusoap.php'); 
	require_once('lib/class.wsdlcache.php');

	$soapclient2 = new nusoap_client('http://jinmasw.esy.es/ComprobarContrasena.php?wsdl',false);
	
	echo "".$soapclient2->call('comprobarPass',array('c'=>$_GET['contrasena'],'t'=>$_GET['ticket']));



?>