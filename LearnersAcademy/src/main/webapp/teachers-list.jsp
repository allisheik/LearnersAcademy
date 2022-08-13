<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Teachers</title>
</head>
<body>
		<jsp:include page="nav.jsp" />
			<center><h3>---- Teachers ----</h3></center>
				<center><table border=1 cellspacing=0 cellpadding=10>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>age</th>
					</tr>
					<c:forEach var="tempStudent" items="${TEACHERS_LIST }">
						<tr>
							<td>${tempStudent.fname}</td>
							<td>${tempStudent.lname}</td>
							<td>${tempStudent.age}</td>
						</tr>
					</c:forEach>
				</table></center>
</body>
</html>