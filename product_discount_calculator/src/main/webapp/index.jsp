<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Discount Calculator</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/display-discount">
    <table>
        <tr>
            <td style="font-weight: bold">List Price</td>
            <td><input type="number" name="price"></td>
        </tr>
        <tr>
            <td style="font-weight: bold">Discount Percent</td>
            <td><input type="number" name="discount"></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Calculate</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>