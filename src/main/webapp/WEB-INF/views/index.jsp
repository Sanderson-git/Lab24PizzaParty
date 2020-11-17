<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pizza Vote HomePage</title>
</head>
<body>
	<h1>Homepage</h1>
	<h3><a href="/">Home</a><br /><a href="/vote">Options & Votes</a></h3>
	<table>
		<thead>
			<tr>
				<th>Pizza Parties</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="party" items="${party }">
				
				<tr>
					<td>${party.getName() }</td>
					<td>${party.getDate() }</td>
				</tr>
					
			</c:forEach>
		</tbody>
	</table>
</body>
</html>