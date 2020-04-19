<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Customer List</title>
<meta charset="utf-8"/>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	




	<jsp:include page="header.jsp"></jsp:include>

	<div class="text-right"><a class="btn btn-warning" href="user_add.jsp">Add Customer</a></div>
	<c:if test="${!empty msg }">
		<div class="alert alert-success">${msg }</div>
	</c:if>
	<c:if test="${!empty failMsg }">
		<div class="alert alert-danger">${failMsg }</div>
	</c:if>
	<br>
	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="10%">Username</th>
		<th width="10%">Email</th>
		<th width="10%">Recipient</th>
		<th width="10%">Phone</th>
		<th width="10%">Address</th>
		<th width="12%">Operating</th>
	</tr>


		<c:forEach items="${p.list }" var="u">
			<tr>
				<td><p>${u.id }</p></td>
				<td><p>${u.username }</p></td>
				<td><p>${u.email }</p></td>
				<td><p>${u.name }</p></td>
				<td><p>${u.phone }</p></td>
				<td><p>${u.address }</p></td>
				<td>
					<a class="btn btn-info" href="/admin/user_reset.jsp?id=${u.id }&username=${u.username }&email=${u.email }">Reset Password</a>
					<a class="btn btn-primary" href="/admin/user_editshow?id=${u.id }">Modify</a>
					<a class="btn btn-danger" href="${pageContext.request.contextPath }/admin/user_delete?id=${u.id }">Delete</a>
				</td>
			</tr>
		</c:forEach>
     
     
</table>

<br>
	<jsp:include page="/page.jsp">
		<jsp:param value="/admin/user_list" name="url"/>
	</jsp:include>
<br>
</div>
</body>
</html>