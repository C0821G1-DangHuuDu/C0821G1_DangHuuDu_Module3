<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/12/2021
  Time: 2:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Product</title>
</head>
<body>
<h1>Danh Sách Sản Phẩm</h1>
<c:out value="${msg}"/>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Detail</th>
        <th>Factory</th>
        <th>Funtion</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td><c:out value="${product.id}"/> </td>
            <td><c:out value="${product.nameProduct}"/> </td>
            <td><c:out value="${product.priceProduct}"/> </td>
            <td><c:out value="${product.detailProduct}"/> </td>
            <td><c:out value="${product.factoryProduct}"/> </td>
            <td>
                <a href="/products?actionProduct=edit&id=${product.id}&nameProduct=${product.nameProduct}&priceProduct=${product.priceProduct}&detailProduct=${product.detailProduct}&factoryProduct=${product.factoryProduct}">
                <button>Sửa</button>
                </a>
                <a href="/products?actionProduct=delete&id=${product.id}&nameProduct=${product.nameProduct}&priceProduct=${product.priceProduct}&detailProduct=${product.detailProduct}&factoryProduct=${product.factoryProduct}">
                    <button>Xoá</button>
                </a>
                <a href="/products?actionProduct=view&id=${product.id}&nameProduct=${product.nameProduct}&priceProduct=${product.priceProduct}&detailProduct=${product.detailProduct}&factoryProduct=${product.factoryProduct}">
                    <button>Chi tiết</button>
                </a>
            </td>

        </tr>
    </c:forEach>
</table>
<a href="/products?actionProduct=create"><button>Thêm mới sản phẩm</button></a>
<a href="/products?actionProduct=search"><button>Tìm kiếm sản phẩm</button></a>
</html>
