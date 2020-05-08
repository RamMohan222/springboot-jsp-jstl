<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attributes List</title>
</head>
<body>

	<a href="/?action=/"> << Back </a>
	<br />
	<br />
	<c:if test="${attributes != null }">
		<table border="1">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="map" items="${attributes}">
					<tr>
						<td>${map['id']}</td>
						<td>${map['name']}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>
</body>
</html>