<?php

	require_once('lib/nusoap.php'); 
	require_once('lib/class.wsdlcache.php');

	$soapclient = new nusoap_client( 'http://cursodssw.hol.es/comprobarmatricula.php?wsdl',true);

	echo "".$soapclient->call('comprobar',array( 'x'=>$_GET['correo']));


?>