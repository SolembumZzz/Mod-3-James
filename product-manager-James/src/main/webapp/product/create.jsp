<%--
  Created by IntelliJ IDEA.
  User: XV
  Date: 30-May-22
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .message {
            color: blue;
        }
    </style>
    <title>Add Product</title>
</head>
<body>
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
        <legend>Product Information</legend>
        <table>
            <tr>
                <td><label for="name">Name: </label></td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td><label for="price">Price: </label></td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td><label for="quantity">Quantity: </label></td>
                <td><input type="number" name="quantity" id="quantity"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">Create</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
