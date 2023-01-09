<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
				<!-- 2.2 a) -->
				<form:form action="" id="" method="POST">
		<label for="name">Nombre:</label><br>
  					<input type="text" id="name" name="name"><br>
  					<label for="apellidos">Apellidos:</label><br>
  					<input type="text" id="apellidos" name="apellidos"><br>
  					<label for="age">Edad:</label><br>
  					<input type="number" id="age" name="age"><br>
  					<input type="submit" id="buttonEnviar" onclick="datoFormulario()" id="add-button" value="Añadir">
</form:form>
</body>
</html>