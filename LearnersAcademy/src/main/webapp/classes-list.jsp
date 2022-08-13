<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Classes</title>
</head>
	<body>
		<jsp:include page="nav.jsp" />
				<center><h3>----- Time Table ------</h3></center>
				<center><table border=1 cellspacing=0 cellpadding=10>
					<tr>
						<th>Class</th>
						<th>Subject</th>
						<th>Teacher</th>
						<th>Time</th>
						<th>List of Students</th>
					</tr>
					<c:forEach var="tempClass" items="${CLASSES_LIST }">
						<tr>
							<c:url var="tempLink" value="AdminControllerServlet">
								<c:param name="command" value="ST_LIST" />
								<c:param name="classId" value="${tempClass.id }" />
								<c:param name="section" value="${tempClass.section }" />
								<c:param name="subject" value="${tempClass.subject }" />
							</c:url>
							<td>${tempClass.section}</td>
							<td>${tempClass.subject}</td>
							<td>${tempClass.teacher}</td>
							<td>${tempClass.time}</td>
							<td><a href="${tempLink }">List</a></td>
						</tr>
					</c:forEach>
				</table></center>
	</body>
</html>