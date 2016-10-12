<?php
$val="$_POST[correo]";
$opt=array("options"=>array("regexp"=>"/[a-zA-z]+[0-9]{3}(@ikasle.ehu.e)u?(s)/"));
if(filter_var($val, FILTER_VALIDATE_REGEXP,$opt))
{
echo "Matched String";
}
else
{
echo "Not Matched String";
}
?> 