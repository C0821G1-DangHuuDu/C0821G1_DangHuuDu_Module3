<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/11/2021
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/translate" method="get">
    <h1>Currency Converter</h1>

    <div style="margin-top: 10px">
      <input type="text" name="english" placeholder="Enter your word:">
      <input type="submit" value="Search">
    </div>
  </form>

  <%
    if(request.getAttribute("result")!=null){
  %>
    <h2 style="color: red">Vietnamese: <%=request.getAttribute("result")%></h2>
  <%
  }
  %>
  </body>
</html>
