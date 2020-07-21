<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index</title>
<style type="text/css">
	.suc { color: #DC143C;}
	.err { color: #00BFFF;}
</style>
</head>
<body>
	<h1> Student Operations </h1> <hr/>
	<a href="insert"> New Student </a>
	| <a href="display"> Display/Update/Delete </a> 
	| <a href="search"> Search Record </a>
	| <a href="deleteall"> Delete All Record </a>
	
	<hr/>
	<h2 class="suc">  ${msg }</h2>
	<h2 class="err">  ${msgs }</h2>
</body>
</html>