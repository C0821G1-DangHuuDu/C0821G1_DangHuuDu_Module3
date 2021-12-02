<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/12/2021
  Time: 3:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
</head>
<body>
<h1>Tạo mới sản phẩm</h1>
<form action="/products" method="post">
    <input type="hidden" name="actionProduct" value="create">
<table>
    <tr>
        <td>Nhập mã SP: </td>
        <td>
            <input type="text" name="id">
        </td>
    </tr>
    <tr>
        <td>Nhập tên SP: </td>
        <td>
            <input type="text" name="nameProduct">
        </td>
    </tr>
    <tr>
        <td>Nhập giá SP: </td>
        <td>
            <input type="text" name="priceProduct">
        </td>
    </tr>
    <tr>
        <td>Nhập chi tiết SP: </td>
        <td>
            <input type="text" name="detailProduct">
        </td>
    </tr>
    <tr>
        <td>Nhập nhà sản xuất SP: </td>
        <td>
            <input type="text" name="factoryProduct">
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" value="Create">
        </td>
    </tr>
</table>
</form>
</body>
</html>
