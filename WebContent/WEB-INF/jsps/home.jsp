<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<!--  
	Session: (using EL) ${name}
	<c:out value="${name}"></c:out>

	<sql:query var="rs" dataSource="jdbc/spring">
	select id, name, email,text from offers
	</sql:query> -->
	
	<p><a href="${pageContext.request.contextPath}/offers">All offers</a></p>
	<p><a href="${pageContext.request.contextPath}/createoffer">Add a new offer</a></p>


</body>
</html>