<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>


	<c:forEach items="${questions}" var="question">
		<a href='<spring:url value="/jobs/${question.id}"/>'> ${question.title } </a>
	</c:forEach>
	
</body>
</html>
