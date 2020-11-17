<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vote Page</title>
</head>
<body>
	<h3><a href="/">Home</a><br /><a href="/vote">Options & Votes</a></h3>
	<table>
		<thead>
			<tr>
				<th>Pizza Options</th>
				<th>Description</th>
				<th>Votes</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="partyoption" items="${partyoptions }">
				
				<tr>
					<td>${partyoption.getName() }</td>
					<td>${partyoption.getDescription() }</td>
					<td>${partyoption.getVotes() }</td>
					<td><a href="/vote/add/${partyoption.getId()}">Add Vote</a></td>
				</tr>
					
			</c:forEach>
		</tbody>
	</table>
	<br />
	<h3>Add a pizza option</h3><br />
	
	<form method="post"action="/vote/add">
		Name : <input type="text" name="name" /><br />
		Description : <input type="text" name="description" /><br />
			<input type="submit" />
	</form>
	
</body>
</html>