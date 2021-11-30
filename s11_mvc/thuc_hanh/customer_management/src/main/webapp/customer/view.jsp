<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/11/2021
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${customer.getName()}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${customer.getEmail()}</td>
    </tr>
    <tr>
        <td>Address: </td>
        <td>${customer.getAddress()}</td>
    </tr>
</table>
</body>
</html>
