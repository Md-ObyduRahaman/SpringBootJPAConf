<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>insert</title>
</head>
<body>
<h1> New Student </h1> <hr/>

	<form action="add" method="post">
		Enter Roll <br/>
		<input type="text" name="roll"> <br/>
		
		Enter Name <br/>
		<input type="text" name="name"> <br/>
		
		Enter Address <br/>
		<input type="text" name="address"> <br/>
		
		Enter Age <br/>
		<input type="text" name="age"> <br/> <br/>
		
		<input type="submit" value="Register">
		  
	</form>
	<hr/>
	<h2> ${msg } </h2>
</body>
</html>