<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<!-- The <c:if> tag evaluates an expression and displays its body content only if the expression evaluates to true
	atributos:
	test condicion a evaluar require YEs default none
	var nombre variable requiere NO default none
	scope Alcance de la variable para almacenar el resultado de la condición require NO default page
	 -->
	<c:if test="${!error}">
		<p>Datos que nos envía el servidor:<br>
			<b>Nombre: </b>${nombre}<br>
			<b>Apellidos: </b>${apellidos}<br>
			<b>Edad: </b>${edad}<br>
		</p>
	</c:if> 
	<c:if test="${error}">
			<p style="color: red;">Error: Campos vacíos</p>
	</c:if>
</body>
</html>