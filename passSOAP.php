<?php

	require_once('lib/nusoap.php'); 
	require_once('lib/class.wsdlcache.php');

	$soapclient2 = new nusoap_client('http://localhost/localhost/ComprobarContrasena.php?wsdl', 'wsdl');
	
	echo "".$soapclient2->call('comprobarPass',array('c'=>$_GET['contrasena']));


?>