<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejercicio Peticiones Asíncronas I</title>

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
						<span>#Spring Proyect - Peticiones asíncronas</span>
					</p>
				</div>
			</div>
			<div class="nota">
				<div class="notacab1">
					<p>Enunciado</p>
				</div>
				<div class="notabody">
					<p class="objetivos">
						<b>a)</b> Creé una controladora, denominada HomeController y
						proceda a mapear la ruta /home tal que delegue en la vista
						home.jsp que ya tiene creada en este proyecto. Además /home debe
						ser el mapeo por defecto de esta aplicación. (<b>max. 1p</b>)
					</p>
					<br>
					<br>
					<p class="objetivos">A continuación, se solicita que sin perder
						el DOM de esta vista (home) y explotando el MVC de Java Spring,
						implemente las cuestiones que se especifican a continuación
						haciendo uso exclusivamente de las peticiones asíncronas:</p>
					<p class="objetivos">
						<b>b)</b> Al hacer clic en el botón [Nuevo Alumno] deberá
						mostrarse un formulario que permita recoger los siguientes
						parámetros: <br>
						<br>- Nombre<br>- Apellidos<br>- Edad<br>
						<br>Además, este formulario debe ofrecer un botón denominado
						[Añadir], tal que al hacer clic en él, envie los datos al servidor
						y los añada a una variable de sesión. Se debe permitir ir
						acumulando en una única variable de sesión los alumnos. (<b>max.
							3p</b>)
					</p>
					<p class="objetivos">
						<b>c)</b> En la controladora, debe validarse la información
						enviada anteriormente tal que si alguno de los campos no está
						rellenado o si la edad es inferior a 17 años, informe del error
						(no se permite hacer uso de alert en javascript). Cuando la
						operación resulte exitosa, se deberá ocultar el formulario tal que
						el usuario pueda volver a ejecutar el apartado a). (<b>max. 3p</b>)
					</p>
					<p class="objetivos">
						<b>d)</b> Durante el tiempo que transcurre entre el envío de la
						petición (tras hacer clic en [Añadir]) y la recepción de la
						respuesta del servidor, se debe indicar en el label del botón
						[Añadir] el texto "Espere un momento..." (<b>max. 1p</b>)
					</p>
					<p class="objetivos">
						<b>e)</b> Incorpore algún panel que muestre un resumen de los
						datos de los alumnos que contiene la variable de sesión. Este
						panel debe refrescarse cada vez que se haga clic en [Añadir] (<b>max.
							2p</b>)
					</p>

				</div>
			</div>
		</div>
		<div class="panel2">
			<div class="item">
				<p>
					<span>Alumnado del centro:</span> Para añadir un nuevo alumno, haga
					clic aquí: <input type="button" id="showForm" value="Nuevo Alumno"/>
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
			<span>©</span> 2022 - Daniel Pérez Pérez
		</p>
	</div>



</body>
</html>