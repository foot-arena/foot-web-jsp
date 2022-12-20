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
	<h1>Regisration:</h1>

	<form action="registration" method="POST">
		<div>
			<label for="fullname">Nom complet:</label>
			<input id="fullname" type="text" name="fullname">
		</div>
		<div>
			<label for="email">Email:</label>
			<input id="email" type="text" name="email">
		</div>
		<div>
			<label for="password">Mot de passe:</label>
			<input id="password" type="password" name="password">
		</div>
		<div>
			<label for="phone">Phone:</label>
			<input id="phone" type="text" name="phone">
		</div>

		<input type="submit" value="Inscrire" />
	</form>
</body>
</html>
