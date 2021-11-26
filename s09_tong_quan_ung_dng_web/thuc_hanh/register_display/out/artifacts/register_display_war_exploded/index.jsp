<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/11/2021
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
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

  <h2 style="color: red"><%=request.getAttribute("resultLogin")%></h2>
  </body>
</html>
