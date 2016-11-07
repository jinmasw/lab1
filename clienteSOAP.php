<?php

	require_once('lib/nusoap.php'); 
	require_once('lib/class.wsdlcache.php');

	$soapclient = new nusoap_client('http://sw14.hol.es/ServiciosWeb/comprobarmatricula.php?wsdl', false);

	echo "".$soapclient->call('comprobar',array( 'x'=>$_GET['correo']));


?>