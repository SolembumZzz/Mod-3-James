<%--
  Created by IntelliJ IDEA.
  User: XV
  Date: 30-May-22
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Product details</h1>
<a href="${pageContext.request.contextPath}/products">Back to product list</a>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].name}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>
            <fmt:formatNumber type="number" maxFractionDigits="0" value="${requestScope['product'].price}" /> vnd
        </td>
    </tr>
    <tr>
        <td>Quantity: </td>
        <td>${requestScope["product"].quantity}</td>
    </tr>
</table>
</body>
</html>
