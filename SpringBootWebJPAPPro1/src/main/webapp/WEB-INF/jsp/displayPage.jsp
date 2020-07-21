<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>display</title>
<style type="text/css">
	.btn_update {background-color: #3CB371;color: white;}
	.btn_delete {background-color: 	#FF6347;color: white;}
	th { background-color: orange;color: white;}
	.msglist { color: #00BFFF;}
	.msgupdate { color: #32CD32;}
	.msgdelete {color: #DC143C; }
	
</style>
</head>
<body>
<center>
	<h1> Display Student Record </h1> <hr/>
	<table border="5" width="50%">
		<tr>
			<th> ROLL </th>
			<th> NAME </th>
			<th> ADDRESS </th>
			<th> AGE </th>
			<th colspan="2"> Total Record : ${result } </th>
		</tr>
			<c:forEach var="tab" items="${data }">
			<form action="update" method="post">
		<tr>
			<input type="hidden" value="${tab.id }" name="id">
			<td> <input type="text" value="${tab.roll }" name="roll" readonly> </td>
			<td> <input type="text" value="${tab.name }" name="name"> </td>
			<td> <input type="text" value="${tab.address }" name="address"> </td>
			<td> <input type="text" value="${tab.age }" name="age"> </td>
			<td> <input type="submit" value="UPDATE" class="btn_update"> </form> </td>
			<td>
				<form action="delete" method="post">
					<input type="hidden" value="${tab.id }" name="id">
					<input type="submit" value="DELETE" class="btn_delete">
				</form>
			</td>
		</tr>
		</c:forEach>
	</table>
	<hr/>
	<h2 class="msglist"> ${msg } </h2>
	<h2 class="msgupdate"> ${msgs } </h2>
	<h2 class="msgdelete"> ${msgss } </h2>
</center>
</body>
</html>