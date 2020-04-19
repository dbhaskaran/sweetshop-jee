<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<title>Order List</title>
<link rel="stylesheet" href="css/bootstrap.css"/> 
</head>
<body>
<div class="container-fluid">

	




	<jsp:include page="header.jsp"></jsp:include>

	<br>

	<ul role="tablist" class="nav nav-tabs">
		<li <c:if test="${status==0 }">class="active"</c:if> role="presentation"><a href="/admin/order_list">All Orders</a></li>
		<li <c:if test="${status==1 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=1">Unpaid</a></li>
		<li <c:if test="${status==2 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=2">Paid</a></li>
		<li <c:if test="${status==3 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=3">Shipping</a></li>
		<li <c:if test="${status==4 }">class="active"</c:if> role="presentation"><a href="/admin/order_list?status=4">Completed</a></li>
	</ul>

	<br>
	
	<table class="table table-bordered table-hover">

	<tr>
		<th width="5%">ID</th>
		<th width="5%">Total</th>
		<th width="15%">Product Details</th>
		<th width="20%">Delivery Info</th>
		<th width="10%">Order Status</th>
		<th width="10%">Payment Method</th>
		<th width="10%">Order User</th>
		<th width="10%">Order Time</th>
		<th width="10%">Operating</th>
	</tr>

		<c:forEach items="${p.list }" var="order">
			<tr>
				<td><p>${order.id }</p></td>
				<td><p>${order.total }</p></td>
				<td>
					<c:forEach items="${order.itemList }" var="item">
						<p>${item.goodsName }(${item.price }) x ${item.amount}</p>
					</c:forEach>
				</td>
				<td>
					<p>${order.name }</p>
					<p>${order.phone }</p>
					<p>${order.address }</p>
				</td>
				<td>
					<p>
						<c:if test="${order.status==2 }"><span style="color:red;">Paid</span></c:if>
						<c:if test="${order.status==3 }"><span style="color:green;">Shipped</span></c:if>
						<c:if test="${order.status==4 }"><span style="color:black;">Completed</span></c:if>

					</p>
				</td>
				<td>
					<p>

						<c:if test="${order.paytype==1 }">WeChat</c:if>
						<c:if test="${order.paytype==2 }">AliPay</c:if>
						<c:if test="${order.paytype==3 }">Cash On Delivery</c:if>

					</p>
				</td>
				<td><p>${order.user.username }</p></td>
				<td><p>${order.datetime }</p></td>
				<td>
					<c:if test="${order.status==2 }">
						<a class="btn btn-success" href="/admin/order_status?id=${order.id }&status=3">Ship</a>
					</c:if>
					<c:if test="${order.status==3 }">
						<a class="btn btn-warning" href="/admin/order_status?id=${order.id }&status=4">Carry Out</a>
					</c:if>
					<a class="btn btn-danger" href="/admin/order_delete?id=${order.id }&pageNumber=${p.pageNumber}&status=${status}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	
     
</table>

<br>
	<jsp:include page="/page.jsp">
		<jsp:param value="/admin/order_list" name="url"/>
		<jsp:param value="&status=${status}" name="param"/>
	</jsp:include>
<br>
</div>
</body>
</html>