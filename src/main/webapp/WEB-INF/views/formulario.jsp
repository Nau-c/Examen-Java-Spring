<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./styles/index.css">

<link type="text/css" href="./js/jquery-ui-1.13.0/jquery-ui.min.css"
	rel="stylesheet" />
<script src="./js/jquery-3.6.0.min.js"></script>
<script src="./js/jquery-ui-1.13.0/jquery-ui.min.js"></script>
<script src="./js/index.js"></script>

</head>
<body>
				<!-- 2.2 a) -->
				<form:form id="formulario" method="POST" action="#">
				<label for="nombre">Nombre:</label><br>
  					<input type="text" id="nombre" name="nombre"><br>
  				<label for="apellidos">Apellidos:</label><br>
  					<input type="text" id="apellidos" name="apellidos"><br>
  				<label for="edad">Edad:</label><br>
  					<input type="number" id="edad" name="edad" min="1" max="120" step="1"><br>
  						<input type="submit" id="buttonEnviar" id="add-button" value="Añadir">
</form:form>
</body>
</html>