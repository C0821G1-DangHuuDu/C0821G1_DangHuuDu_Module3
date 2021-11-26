<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/11/2021
  Time: 1:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/discount" method="post">
    <h1>Currency Converter</h1>

    <div style="margin-top: 10px">
      <label for="product">Product Description:&nbsp;&nbsp;</label>
      <input type="text" id="product" name="product" placeholder="Enter product:">
    </div>
    <div style="margin-top: 10px">
      <label for="price">List Price:&nbsp;&nbsp;</label>
      <input type="text" id="price" name="price" placeholder="Enter price:">
    </div>
    <div style="margin-top: 10px">
      <label for="discountPercent">Discount Percent:&nbsp;&nbsp;</label>
      <input type="text" id="discountPercent" name="discountPercent" placeholder="Enter discount percent:">
    </div>
    <input style="margin-top: 10px" type="submit" value="Calculate Discount">
  </form>

  </body>
</html>
