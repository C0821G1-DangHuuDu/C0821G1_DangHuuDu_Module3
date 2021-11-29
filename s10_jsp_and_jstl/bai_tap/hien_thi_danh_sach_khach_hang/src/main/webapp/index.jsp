<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/11/2021
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Customer List</title>
  </head>
  <body>
  <h1>Danh sách khách hàng</h1>
  <table>
    <tr>
      <th>STT</th>
      <th>Họ và Tên</th>
      <th>Ngày Sinh</th>
      <th>Đia chỉ</th>
      <th>Ảnh</th>
    </tr>
    <c:forEach var="customer" items="${customerList}" varStatus="loop">
      <tr>
        <td><c:out value="${loop.count}" /></td>
        <td><c:out value="${customer.name}" /></td>
        <td><c:out value="${customer.dateOfBirth}" /></td>
        <td><c:out value="${customer.address}" /></td>
        <td><img width="50px" height="50px" src="<c:out value="${customer.image}"/>" alt="anh" /></td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
