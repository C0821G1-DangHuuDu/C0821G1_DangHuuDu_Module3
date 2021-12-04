<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/12/2021
  Time: 2:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Search User</title>
</head>
<body>
<h1>Trang tìm kiếm User</h1>
<form action="/user" method="post">
    <input type="hidden" name="actionUser" value="search">
    <label>Nhập vào tên quốc gia muốn tìm kiếm:</label><br>
    <input type="text" name="country"><br>
    <input type="submit" value="Tìm kiếm">
</form>
<h3>User cần tìm là:</h3>
<table border="1">
    <tr>
        <th>Mã User</th>
        <th>Tên</th>
        <th>Email</th>
        <th>Quốc gia</th>
    </tr>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td><c:out value="${user.id}" /></td>
            <td><c:out value="${user.name}" /></td>
            <td><c:out value="${user.email}" /></td>
            <td><c:out value="${user.country}" /></td>
        </tr>
    </c:forEach>
</table>
<c:out value="${msg}"/>
</body>
</html>
