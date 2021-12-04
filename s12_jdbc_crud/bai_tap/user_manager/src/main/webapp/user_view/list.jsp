<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2021
  Time: 10:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List User</title>
</head>
<body>
<h1>Trang hiển thị danh sách User</h1>

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
<a href="/user?actionUser=search"><button>Search</button></a>
<a href="/user?actionUser=sort"><button>Sort</button></a>
</body>
</html>
