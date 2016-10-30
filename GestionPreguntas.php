<html>
	<head>
		<title> Insertar Pregunta AJAX</title>
		
		<script type="text/javascript">
			function viewQuestion(){
				
				if (window.XMLHttpRequest){
					xmlhttp= new XMLHttpRequest();
				}
				
				xmlhttp.onreadystatechange= function(){
					if (xmlhttp.readyState==4 && xmlhttp.status==200){
						document.getElementById("verPreguntas").innerHTML=xmlhttp.responseText;
					}
				}
				
				xmlhttp.open("GET","VerPreguntasXML.php",true);
				xmlhttp.send();
			}
		</script>
		
		<script type="text/javascript">
			function sendQuestion(p, r, d, t){
				
				xmlhttp= new XMLHttpRequest();
				xmlhttp.onreadystatechange= function(){
					if (xmlhttp.readyState==4 && xmlhttp.status==200){
						document.getElementById("enviarPregunta").innerHTML=xmlhttp.responseText;
					}
				}
				
				xmlhttp.open("GET","InsertarPregunta2.php?pregunta="+p+"&respuesta="+r+"&dificultad="+d+"&tematica="+t,true);
				xmlhttp.send();
				
			}
		</script>
		
		
		
	</head>
	<body>
		<form>
	
			Pregunta: <input type= "text"
			name="pregunta"
			id="pregunta"
			value="">
			
			<br>
			
			Respuesta: <input type= "text"
			name="respuesta"
			id="respuesta"
			value="">
			
			<br>
			
			Dificultad: <input type= "number"
			name="dificultad"
			id="dificultad"
			value="">
			
			<br>
			
			Tematica: <input type= "text"
			name="tematica"
			id="tematica"
			value="">
			
			<br>
			
		<input type="button" name="VerPreguntas" value="VerPreguntas" onclick="viewQuestion()">	
		
		<br>
		
		<input type="button" name="EnviarPregunta" value="EnviarPregunta" onclick="sendQuestion(pregunta.value, respuesta.value, dificultad.value, tematica.value)">
		
	</form>	
	
	<br>
	
	<div id="verPreguntas">Aqui se mostraran las preguntas</div>
	<div id="enviarPregunta">Aqui se mostrara si se ha enviado bien la pregunta</div>
		
	</body>
</html>