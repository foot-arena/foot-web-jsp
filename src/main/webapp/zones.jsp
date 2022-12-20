<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DiroNiya</title>
</head>
<body>
	<h1>Zones:</h1>

	<form action="zones" method="POST">
		<label for="zone">Nom zone:</label>
		<input id="zone" type="text" name="zone_name">
		<select name="city_id">
			<c:forEach items="${cities}" var="city">
				<option value="${city.id}">${city.name}</option>
			</c:forEach>
		</select> <input type="submit" value="Ajouter" />
	</form>

	<hr />

	<table border="1">
		<thead>
			<th>Zone</th> 
			<th>Ville</th>
		</thead>
	<tbody>
		<c:forEach items="${zones}" var="zone">
			<tr>
				<td>${zone.name}</td> 
				<td>${zone.city.name}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>