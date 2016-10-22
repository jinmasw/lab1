<?php

echo '<table border=1> <tr> <th> PREGUNTA </th> <th> DIFICULTAD </th> <th> TEMATICA </th> </tr>';
$xml = simplexml_load_file('preguntas.xml');

foreach ($xml->assessmentItem as $assessmentItem){
	
	$dificultad= $assessmentItem['complexity'];
	$tematica= $assessmentItem['subject'];
	$pregunta= $assessmentItem->itemBody[0]->p[0];
	
	echo '<tr><td>' . $pregunta . '</td> <td>' . $dificultad . '</td> <td>' . $tematica . '</td>';	
}

?>