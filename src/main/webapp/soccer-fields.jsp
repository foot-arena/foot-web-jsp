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
	<h1>Terrains:</h1>

	<form action="fields" method="POST">
		<div>
			<label for="field_name">Nom:</label>
			<input id="field_name" type="text" name="field_name">
		</div>
		<div>
			<label for="field_adr">Adresse:</label>
			<input id="field_adr" type="text" name="field_address">
		</div>
		<div>
			<label for="field_description">Description:</label>
			<textarea rows="3" cols="" id="field_description" name="field_description"></textarea>
		</div>
		<div>
			<label for="field_cap">Capacité:</label>
			<input id="field_cap" type="number" name="field_capacity">
		</div>
		<div>
			<label for="field_lat">Latitude:</label>
			<input id="field_lat" type="number" step="0.01" name="field_latitude">
		</div>
		<div>
			<label for="field_lon">Longitude:</label>
			<input id="field_lon" type="number" step="0.01" name="field_longitude">
		</div>
		<div>
			<label for="field_price">Price:</label>
			<input id="field_price" type="number" step="0.01" name="field_price">
		</div>
		<div>
			<label for="field_rank">Rank:</label>
			<select id="field_rank" name="field_rank">
				<c:forEach items="${ranks}" var="rank">
					<option value="${rank}">${rank}</option>
				</c:forEach>
			</select>
		</div>
		<div>
			<label for="field_zone">Zone:</label>
			<select id="field_zone" name="zone_id">
				<c:forEach items="${zones}" var="zone">
					<option value="${zone.id}">${zone.name}</option>
				</c:forEach>
			</select>
		</div>
		<input type="submit" value="Ajouter" />

	</form>

	<hr />

	<table border="1">
	<thead>
			<th>Nom</th> 
			<th>Adresse</th>
			<th>Latitude</th>
			<th>Longitude</th>
			<th>Capacité</th>
			<th>Prix</th>
			<th>Rank</th>
	</thead>
	<tbody>
	<c:forEach items="${fields}" var="field">
		<tr>
			<td>${field.name}</td> 
			<td>${field.address}</td>
			<td>${field.latitude}</td>
			<td>${field.longitude}</td>
			<td>${field.capacity}</td>
			<td>${field.price} MAD</td>
			<td>${field.rank}</td>
		</tr>
	</c:forEach>
	</tbody>
	</table>
</body>
</html>
