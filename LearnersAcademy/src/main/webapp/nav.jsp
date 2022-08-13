<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<center style="border:orange; border-width:5px; border-style:solid;"><h3>
		Welcome School007 Administrative Portal
	</h3></center>
	<br>
	<center><h3>Click on below links to navigate</h3></center>
	<c:url var="classesLink" value="AdminControllerServlet">
		<c:param name="command" value="CLASSES" />
	</c:url>

	<c:url var="subjectsLink" value="AdminControllerServlet">
		<c:param name="command" value="SUBJECTS" />
	</c:url>

	<c:url var="teachersLink" value="AdminControllerServlet">
		<c:param name="command" value="TEACHERS" />
	</c:url>

	<c:url var="studentsLink" value="AdminControllerServlet">
		<c:param name="command" value="STUDENTS" />
	</c:url>
	<br>
	<center style="border:orange; border-width:5px; border-style:solid;"><br>
		<a href="${classesLink}">Time Table</a> 
		<a href="${subjectsLink}">Subjects</a>
		<a href="${teachersLink}">Teachers</a> 
		<a href="${studentsLink}">Students</a> 
		<a href="login.jsp">Log out</a>
		<br>
		<br>
	</center>

