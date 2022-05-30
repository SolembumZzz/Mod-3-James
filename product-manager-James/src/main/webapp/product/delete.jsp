<%--
  Created by IntelliJ IDEA.
  User: XV
  Date: 30-May-22
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <style>
        .message {
            color: red;
        }
    </style>
    <title>Delete Product</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["product"].name}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>
                   <fmt:formatNumber type="number" maxFractionDigits="0"
                           value="${requestScope['product'].price}"/> vnd
                </td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td>${requestScope["product"].quantity}</td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Delete product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
