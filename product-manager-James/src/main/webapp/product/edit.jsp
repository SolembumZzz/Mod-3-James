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
            color: blue;
        }
    </style>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>`
<p>
    <a href="${pageContext.request.contextPath}/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td><label for="name">Name: </label></td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].name}"></td>
            </tr>
            <tr>
                <td><label for="price">Price: </label></td>
                <td>
                    <input type="text" name="price" id="price"
                           value="<fmt:formatNumber type="number" maxFractionDigits="0"
                           value="${requestScope['product'].price}"/>">
                </td>
            </tr>
            <tr>
                <td><label for="quantity">Quantity: </label></td>
                <td><input type="text" name="quantity" id="quantity" value="${requestScope["product"].quantity}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
