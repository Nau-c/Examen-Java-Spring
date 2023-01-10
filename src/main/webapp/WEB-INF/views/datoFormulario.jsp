<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:if test="${!error}">


	<div id="datos">
		<table>
			<tr>
				<th>NOMBRE</th>
				<th>APELLIDOS</th>
				<th>EDAD</th>
			</tr>

			<c:forEach begin="0" step="1" items="${ListaAlumno.lista}" var="item">
				<tr>

					<td>${item.nombre}</td>
					<td>${item.apellidos}</td>
					<td>${item.edad}</td>


				</tr>

			</c:forEach>



		</table>
	</div>
</c:if>

<div id="error">
	<c:if test="${errorVacio}">
		<p style="color: red;">Error: Campos vacíos</p>
	</c:if>
	<c:if test="${errorEdad}">
		<p style="color: red;">Error: Edad menor de 17</p>
	</c:if>


</div>
