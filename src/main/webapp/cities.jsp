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
	<h1>Villes:</h1>

	<form action="cities" method="POST">
		<label for="city">Nom ville:</label>
		<input id="city" type="text" name="city_name"> 
		<input type="submit" value="Ajouter" />
	</form>

	<hr />

	<c:forEach items="${cities}" var="city">
		<tr>
			<td>${city.name}</td>
		</tr>
		<br/>
	</c:forEach>
</body>
</html>