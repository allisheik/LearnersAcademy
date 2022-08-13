<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students of a Class</title>
</head>
<body>
	<jsp:include page="nav.jsp" />
				<center><h3>---- Students of ${SUBJECT} - Class ${SECTION} ----</h3></center>
				<center><table border=1 cellspacing=0 cellpadding=10>
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>age</th>
					</tr>
					<c:forEach var="tempStudent" items="${STUDENTS_LIST}">
						<tr>
							<td>${tempStudent.fname}</td>
							<td>${tempStudent.lname}</td>
							<td>${tempStudent.age}</td>
						</tr>
					</c:forEach>
				</table></center>
</body>
</html>