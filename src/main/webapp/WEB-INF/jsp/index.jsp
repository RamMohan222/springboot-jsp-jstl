<!doctype html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net"%>
<html lang="en">
<head>
</head>

<body style="text-align: center;">
	<div><%="JSP Example:"%>${this_time}</div>
	<div>
		Type <a href="/?action=persons">Persons</a>
	</div>
	<div>
		Type <a href="/?action=cars">Cars</a>
	</div>
	<div>
		Type <a href="/?action=attributes">Empty</a>
	</div>

	<c:if test="${persons != null }">
		<table border="1">
			<thead>
				<tr>
					<th>Person Id</th>
					<th>Person Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="person" items="${persons}">
					<tr>
						<td>${person.id}</td>
						<td>${person.name}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

	<c:if test="${cars != null }">
		<table border="1">
			<thead>
				<tr>
					<th>Car Id</th>
					<th>Model Name</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="car" items="${cars}">
					<tr>
						<td>${car.id}</td>
						<td>${car.model}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:if>

</body>

</html>