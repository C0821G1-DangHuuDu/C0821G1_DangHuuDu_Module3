<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/11/2021
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple_Login</title>
</head>
<body>
<form action="/login" method="get">
    <h1>Login</h1>
    <div>
        <input type="text" name="username" placeholder="username">
    </div>
    <div>
        <input type="password" name="password" placeholder="password">
    </div>
    <div>
        <input type="submit" value="Sign in">
    </div>
</form>
</body>
</html>
