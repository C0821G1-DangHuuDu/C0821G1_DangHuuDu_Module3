<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/11/2021
  Time: 9:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/convert" method="get">
    <h1>Currency Converter</h1>


    <div>
      <label for="rate">RATE</label>
      <input type="text" id="rate" name="rate" placeholder="RATE" value="22000">
    </div>
    <div style="margin-top: 10px">
      <label for="usd">USD</label>
      <input type="text" id="usd" name="usd" placeholder="USD" value="0">
    </div>
    <div style="margin-top: 10px">
      <input type="submit" value="Convert">
    </div>
  </form>

  <h2 style="color: red">Chuyển sang VND là: <%=request.getAttribute("vnd")%></h2>
  </body>
</html>
