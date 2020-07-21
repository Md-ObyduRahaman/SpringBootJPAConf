<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search</title>
<style type="text/css">
	h2 {color: #00BFFF;}
	th{background-color: mediumseagreen; color:white; }
</style>
</head>
<body>
<center>
	<h1> Search Student Record </h1> <hr/>
	<form action="find" method="post">
		<table border="5" width="100%">
			<tr>
				<td> Search by Roll </td>
				<td> <input type="text" name="roll"> </td>
				
				<td> Search by Name </td>
				<td> <input type="text" name="name"> </td>
				
				<td> Search by Address </td>
				<td> <input type="text" name="address"> </td>
				
				<td> Search by Age </td>
				<td> <input type="text" name="age"> </td>
				
				<td> <input type="submit" value="SEARCH"> </td>
			</tr>
		</table>
	</form>
	
	<hr/>
	<table border="5" width="80%">
		<tr>
			<th> ROLL </th>
			<th> NAME </th>
			<th> ADDRESS </th>
			<th> AGE </th>
		</tr>
			<c:forEach var="tab" items="${data }">
		<tr>
			<td> ${tab.roll } </td>
			<td> ${tab.name } </td>
			<td> ${tab.address } </td>
			<td> ${tab.age } </td>
		</tr>
		</c:forEach>
	</table>
	<hr/>
		<h2> ${msg } </h2>
</center>
</body>
</html>