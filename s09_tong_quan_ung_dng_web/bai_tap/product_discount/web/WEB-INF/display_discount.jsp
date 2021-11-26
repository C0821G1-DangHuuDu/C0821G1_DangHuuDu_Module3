<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/11/2021
  Time: 1:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>display_discount</title>
</head>
<body>
<%
    if(request.getAttribute("discountAmount")!=null){
%>
<h2 style="color: red">Discount Amount: <%=request.getAttribute("discountAmount")%></h2>
<h2 style="color: blue">Discount Price: <%=request.getAttribute("discountPrice")%></h2>

<%
    }
%>
</body>
</html>
