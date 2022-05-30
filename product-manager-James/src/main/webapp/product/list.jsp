<%--
  Created by IntelliJ IDEA.
  User: XV
  Date: 29-May-22
  Time: 11:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>PRODUCTS</h1>
<p>
    <a href="${pageContext.request.contextPath}/products?action=create">Create new product</a>
</p>
<table border=1>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th colspan="2">Action</th>
    </tr>
    <c:forEach items="${requestScope['products']}" var="product">
        <tr>
            <td>
                <a href="${pageContext.request.contextPath}/products?action=view&id=${product.id}">${product.name}</a>
            </td>
            <td>
                <fmt:formatNumber type="number" maxFractionDigits="0" value="${product.price}"/> vnd
            </td>
            <td>${product.quantity}</td>
            <td>
                <a href="${pageContext.request.contextPath}/products?action=edit&id=${product.id}">Edit</a>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/products?action=delete&id=${product.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
