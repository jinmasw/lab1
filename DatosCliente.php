
<?php

	$ip = $_SERVER['REMOTE_ADDR'];
	$license = "02-GC9A-AJMU"; 


		$wsdl = "http://v1.fraudlabs.com/ip2locationwebservice.asmx?wsdl";

		// There are 2 method of getting the results, one using PHP SOAP Client and another using NuSOAP Client. //
		// Just uncomment your preferred method and run the code.                                                //
		
		/* Method 1: Using PHP SOAP Client */
		
		/*$client = new SoapClient($wsdl);
		$parms = array("IP" => $ip,"LICENSE" => $license);

		$result = $client->IP2Location($parms);

		echo "COUNTRYCODE = " . $result->COUNTRYCODE . "<br>";
		echo "COUNTRYNAME = " . $result->COUNTRYNAME . "<br>";
		echo "REGION = " . $result->REGION . "<br>";
		echo "CITY = " . $result->CITY . "<br>";
		echo "LATITUDE = " . $result->LATITUDE . "<br>";
		echo "LONGITUDE = " . $result->LONGITUDE . "<br>";
		echo "ZIPCODE = " . $result->ZIPCODE . "<br>";
		echo "ISPNAME = " . $result->ISPNAME . "<br>";
		echo "DOMAINNAME = " . $result->DOMAINNAME . "<br>";
		echo "TIME_ZONE = " . $result->TIME_ZONE . "<br>";
		echo "NETSPEED = " . $result->NETSPEED . "<br>";
		echo "AREACODE = " . $result->AREACODE . "<br>";
		echo "WEATHERSTATION = " . $result->WEATHERSTATION . "<br>";
		echo "WEATHERSTATIONCODE = " . $result->WEATHERSTATIONCODE . "<br>";
		echo "CREDITSAVAILABLE = " . $result->CREDITSAVAILABLE . "<br>";
		echo "MESSAGE = " . $result->MESSAGE . "<br>";*/
		/* end of Method 1 */
		
		/* Method 2: Using NuSOAP Client */
		
		require_once('lib/nusoap.php');

		$clienteLoc = new nusoap_client($wsdl, 'wsdl');
		$parms = array(array("IP" => $ip,"LICENSE" => $license));

		$result = $clienteLoc->call('IP2Location', $parms);
		
		echo "Datos del cliente <br>";
		echo "Codigo de pais = " . $result["COUNTRYCODE"] . "<br>";
		echo "Pais = " . $result["COUNTRYNAME"] . "<br>";
		echo "Región = " . $result["REGION"] . "<br>";
		echo "Ciudad = " . $result["CITY"] . "<br>";
	/*	echo "LATITUDE = " . $result["LATITUDE"] . "<br>";
		echo "LONGITUDE = " . $result["LONGITUDE"] . "<br>";
		echo "ZIPCODE = " . $result["ZIPCODE"] . "<br>";
		echo "ISPNAME = " . $result["ISPNAME"] . "<br>";
		echo "DOMAINNAME = " . $result["DOMAINNAME"] . "<br>";
		echo "TIME_ZONE = " . $result["TIME_ZONE"] . "<br>";
		echo "NETSPEED = " . $result["NETSPEED"] . "<br>";
		echo "AREACODE = " . $result["AREACODE"] . "<br>";
		echo "WEATHERSTATION = " . $result["WEATHERSTATION"] . "<br>";
		echo "WEATHERSTATIONCODE = " . $result["WEATHERSTATIONCODE"] . "<br>";
		echo "CREDITSAVAILABLE = " . $result["CREDITSAVAILABLE"] . "<br>";
		echo "MESSAGE = " . $result["MESSAGE"] . "<br>";*/
		
		/* end of Method 2 */

?>
