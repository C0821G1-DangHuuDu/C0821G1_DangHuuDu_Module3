<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2021
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search Product</title>
</head>
<body>
<h1>Trang tìm kiếm sản phẩm</h1>
<form action="/products" method="post">
    <input type="hidden" name="actionProduct" value="search">
    <label>Nhập tên sản phẩm cần tìm: </label>
    <input type="text" name="nameProduct"><br>
    <input type="submit" value="Tìm kiếm">
</form>
<c:out value="${msg}"/>
</body>
</html>
