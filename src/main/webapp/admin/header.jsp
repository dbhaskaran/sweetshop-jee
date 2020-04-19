<%--
  Created by IntelliJ IDEA.
  User: 19767
  Date: 2018/11/30
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-dark bg-dark" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">Sweet Shop Admin</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li ><a href="/admin/order_list">Order Management</a></li>
                <li ><a href="/admin/user_list">Customer Management</a></li>
                <li ><a href="/admin/goods_list">Commodity Management</a></li>
                <li ><a href="/admin/type_list">Category Management</a></li>
                <li><a href="/user_logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
