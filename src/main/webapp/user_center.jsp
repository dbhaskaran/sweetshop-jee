<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>User Details</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/simpleCart.min.js"></script>
</head>
<body>

	<jsp:include page="/header.jsp">
		<jsp:param value="4" name="flag"/>
	</jsp:include>
	<c:if test="${empty user}"><%response.sendRedirect("/index");%></c:if>
	<!--account-->
	<div class="account">
		<div class="container">
			<div class="register">
				<c:if test="${!empty msg }">
					<div class="alert alert-success">${msg }</div>
				</c:if>
				<c:if test="${!empty failMsg }">
					<div class="alert alert-danger">${failMsg }</div>
				</c:if>
				
					<div class="register-top-grid">
						<h3>个人中心</h3>
						<form action="/user_changeaddress" method="post">
						<!-- 收货信息 start -->
						<h4>Delivery Info</h4>
						<div class="input">
							<span>Name<label></label></span>
							<input type="text" name="name" value="${user.name }" placeholder="Name"> 
						</div>
						<div class="input">
							<span>Phone</span>
							<input type="text" name="phone" value="${user.phone }" placeholder="Phone"> 
						</div>
						<div class="input">
							<span>Address</span>
							<input type="text" name="address" value="${user.address }" placeholder="Address"> 
						</div>
						<div class="register-but text-center">
						   <input type="submit" value="Submit">
						</div>	
						<!-- Delivery Info end -->
						</form>
						<hr>
						<form action="/user_changepwd" method="post">
						<h4>Security Info</h4>
						<div class="input">
							<span>Password</span>
							<input type="text" name="password" placeholder="Password"> 
						</div>
						<div class="input">
							<span>New Password</span>
							<input type="text" name="newPassword" placeholder="New Password"> 
						</div>
						<div class="clearfix"> </div>
						<div class="register-but text-center">
						   <input type="submit" value="Submit">
						</div>	
						</form>
					</div>
				
				<div class="clearfix"> </div>
			</div>
	    </div>
	</div>
	<!--//account-->

	


	<jsp:include page="/footer.jsp"></jsp:include>

	
</body>
</html>