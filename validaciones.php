<?php 
 
header('Content-Type: text/html; charset=utf-8');
 
 function validarNombre($valor){
	$opt=array("options"=>array("regexp"=>"/^([A-Z][a-z ñáéíóú]{2,60})$/i"));
    if(!filter_var($valor, FILTER_VALIDATE_REGEXP, $opt)){
       return false;
    }else{
       return true;
    }
 }
 function validarPass($valor){
	$opt=array("options"=>array("regexp"=>"/^([a-z ñáéíóú 0-9]{2,60})$/i"));
    if(!filter_var($valor, FILTER_VALIDATE_REGEXP, $opt)){
       return false;
    }else{
       return true;
    }
 }
 function validarTelefono($valor){
	$opt=array("options"=>array("regexp"=>"/^[9|6|7][0-9]{8}$/"));
    if(!filter_var($valor, FILTER_VALIDATE_REGEXP, $opt)){
       return false;
    }else{
       return true;
    }
 }
 
 function validarEmail($val){
	$opt=array("options"=>array("regexp"=>"/[a-zA-z]+[0-9]{3}(@ikasle.ehu.e)u?(s)/"));
	if(!filter_var($val, FILTER_VALIDATE_REGEXP,$opt)){
       return false;
    }else{
       return true;
    }
 }
 
?>