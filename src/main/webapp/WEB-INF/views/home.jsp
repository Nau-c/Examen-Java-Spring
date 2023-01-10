<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio Peticiones As�ncronas I</title>

<link rel="stylesheet" href="./styles/index.css">


<link type="text/css" href="./js/jquery-ui-1.13.0/jquery-ui.min.css"
	rel="stylesheet" />
<script src="./js/jquery-3.6.0.min.js"></script>
<script src="./js/jquery-ui-1.13.0/jquery-ui.min.js"></script>
<script src="./js/index.js"></script>

</head>
<body>
	<div class="cabecera">
		<div class="cab1"></div>
		<div class="cap2"></div>
	</div>
	<div class="cuerpo">
		<div class="panel1">
			<div class="nota">
				<div class="notacab1">
					<p>Ejercicio</p>
				</div>
				<div class="notabody">
					<p style="text-align: center;">
						<span>#Spring Proyect - Peticiones as�ncronas</span>
					</p>
				</div>
			</div>
			<div class="nota">
				<div class="notacab1">
					<p>Enunciado</p>
				</div>
				<div class="notabody">
					<p class="objetivos">
						<b>a)</b> Cre� una controladora, denominada HomeController y
						proceda a mapear la ruta /home tal que delegue en la vista
						home.jsp que ya tiene creada en este proyecto. Adem�s /home debe
						ser el mapeo por defecto de esta aplicaci�n. (<b>max. 1p</b>)
					</p>
					<br>
					<br>
					<p class="objetivos">A continuaci�n, se solicita que sin perder
						el DOM de esta vista (home) y explotando el MVC de Java Spring,
						implemente las cuestiones que se especifican a continuaci�n
						haciendo uso exclusivamente de las peticiones as�ncronas:</p>
					<p class="objetivos">
						<b>b)</b> Al hacer clic en el bot�n [Nuevo Alumno] deber�
						mostrarse un formulario que permita recoger los siguientes
						par�metros: <br>
						<br>- Nombre<br>- Apellidos<br>- Edad<br>
						<br>Adem�s, este formulario debe ofrecer un bot�n denominado
						[A�adir], tal que al hacer clic en �l, envie los datos al servidor
						y los a�ada a una variable de sesi�n. Se debe permitir ir
						acumulando en una �nica variable de sesi�n los alumnos. (<b>max.
							3p</b>)
					</p>
					<p class="objetivos">
						<b>c)</b> En la controladora, debe validarse la informaci�n
						enviada anteriormente tal que si alguno de los campos no est�
						rellenado o si la edad es inferior a 17 a�os, informe del error
						(no se permite hacer uso de alert en javascript). Cuando la
						operaci�n resulte exitosa, se deber� ocultar el formulario tal que
						el usuario pueda volver a ejecutar el apartado a). (<b>max. 3p</b>)
					</p>
					<p class="objetivos">
						<b>d)</b> Durante el tiempo que transcurre entre el env�o de la
						petici�n (tras hacer clic en [A�adir]) y la recepci�n de la
						respuesta del servidor, se debe indicar en el label del bot�n
						[A�adir] el texto "Espere un momento..." (<b>max. 1p</b>)
					</p>
					<p class="objetivos">
						<b>e)</b> Incorpore alg�n panel que muestre un resumen de los
						datos de los alumnos que contiene la variable de sesi�n. Este
						panel debe refrescarse cada vez que se haga clic en [A�adir] (<b>max.
							2p</b>)
					</p>

				</div>
			</div>
		</div>
		<div class="panel2">
			<div class="item">
				<p>
					<span>Alumnado del centro:</span> Para a�adir un nuevo alumno, haga
					clic aqu�: <input type="button" id="showForm" value="Nuevo Alumno"/>
				</p>
			</div>
			<div id="formulario">
			
			</div>
			
			<div id="newStudentForm">
			</div>

		</div>
	</div>
	<div class="pie">
		<p>
			<span>�</span> 2022 - Daniel P�rez P�rez
		</p>
	</div>



</body>
</html>