<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Customer Application</title>
</head>
<body>
<center>
    <h1>Customer Management</h1>
    <h2>
        <a href="/customer">List All Customer</a>
    </h2>
    <p>
        <c:if test="${mess != null}">
            <span>${mess}</span>
        </c:if>
    </p>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Edit Customer
                </h2>
            </caption>
            <%--            <c:if test="${user != null}">--%>
            <%--                <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>--%>
            <%--            </c:if>--%>
            <tr>
                <th>Customer Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" value="test"/>
                </td>
            </tr>

            <tr>
                <th>Customer Customer Date Of Birth:</th>
                <td>
                    <input type="text" name="dateOfBirth" id="date" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Customer gender:</th>
                <td>
                    <input type="text" name="gender" id="gender" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Customer Customer ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idcard" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Customer Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Customer Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Customer Type:</th>
                <td>
                    <input type="text" name="customerType" id="customerType" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Customer address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>