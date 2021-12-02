<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/12/2021
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h1>Chỉnh sửa sản phẩm:</h1>
<p>Thông tin sản phẩm cần chỉnh sửa: </p>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Detail</th>
        <th>Factory</th>
    </tr>
<%--    Không cần forEach--%>
<%--&lt;%&ndash;<c:forEach var="product" items="${product}">&ndash;%&gt; --%>
    <tr>
        <td><c:out value="${product.id}"/></td>
        <td><c:out value="${product.nameProduct}"/> </td>
        <td><c:out value="${product.priceProduct}"/> </td>
        <td><c:out value="${product.detailProduct}"/> </td>
        <td><c:out value="${product.factoryProduct}"/> </td>
    </tr>
<%--</c:forEach>--%>
</table>
<h3>Nhập thông tin sản phẩm cần chỉnh sửa:</h3>
<form action="/products" method="post">
    <input type="hidden" name="actionProduct" value="edit">
    <table>
        <tr>
            <td>Nhập mã SP cần sửa: </td>
            <td>
                <input type="text" name="id">
            </td>
        </tr>
        <tr>
            <td>Nhập tên SP cần sửa: </td>
            <td>
                <input type="text" name="nameProduct">
            </td>
        </tr>
        <tr>
            <td>Nhập giá SP cần sửa: </td>
            <td>
                <input type="text" name="priceProduct">
            </td>
        </tr>
        <tr>
            <td>Nhập chi tiết SP cần sửa: </td>
            <td>
                <input type="text" name="detailProduct">
            </td>
        </tr>
        <tr>
            <td>Nhập nhà sản xuất SP cần sửa: </td>
            <td>
                <input type="text" name="factoryProduct">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Edit">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
