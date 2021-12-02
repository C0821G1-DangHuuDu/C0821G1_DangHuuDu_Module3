<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2021
  Time: 8:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Thông tin chi tiết sản phẩm: </h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Detail</th>
        <th>Factory</th>
    </tr>

    <tr>
        <td><c:out value="${productView.id}"/></td>
        <td><c:out value="${productView.nameProduct}"/> </td>
        <td><c:out value="${productView.priceProduct}"/> </td>
        <td><c:out value="${productView.detailProduct}"/> </td>
        <td><c:out value="${productView.factoryProduct}"/> </td>
    </tr>

</table>
</body>
</html>
