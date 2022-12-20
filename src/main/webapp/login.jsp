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
	<h1>Login:</h1>

	<form action="login" method="POST">
		<div>
			<label for="email">Email:</label>
			<input id="email" type="email" name="email">
		</div>
		<div>
			<label for="password">Mots de passe:</label>
			<input id="password" type="password" name="password">
		</div>

		<input type="submit" value="Connecter" />
	</form>
</body>
</html>
