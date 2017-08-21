<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<h3>Welcome, Enter your Details</h3>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreate" commandName="offer">
		<div class="form-group">
			<table class="table">

				<tr>
					<td>Name:</td>
					<td><sf:input class="control" path="name" name="name" type="text" /><br/><sf:errors path="name" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><sf:input class="control" path="email" name="email" type="text" /><br/><sf:errors path="email" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<td>Your offer:</td>
					<td><sf:textarea class="control" rows="10" path="text" name="text" cols="10" type="text"></sf:textarea><br/><sf:errors path="text" cssClass="error"></sf:errors></td>
				</tr>
				<tr>
					<td></td>
					<td><input class="control" value="Create advert" type="submit" /></td>
				</tr>
			</table>
		</div>
	</sf:form>
</body>
</html>