<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Employee Application</title>
</head>
<body>
<center>
    <h1>Employee Management</h1>
    <h2>
        <a href="/employee">List All Employee</a>
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
                    Edit Employee
                </h2>
            </caption>
<%--            <c:if test="${user != null}">--%>
<%--                <input type="hidden" name="id" value="<c:out value='${user.id}' />"/>--%>
<%--            </c:if>--%>
            <tr>
                <th>Employee Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Employee Email:</th>
                <td>
                    <input type="text" name="name" id="email" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Employee Employee Date Of Birth:</th>
                <td>
                    <input type="text" name="name" id="date" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Employee Employee ID Card:</th>
                <td>
                    <input type="text" name="name" id="idcard" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Employee Phone:</th>
                <td>
                    <input type="text" name="name" id="phone" size="45" value="test"/>
                </td>
            </tr>

            <tr>
            <th>Employee Education_Degree:</th>
            <td>
                <input type="text" name="name" id="education" size="45" value="test"/>
            </td>
        </tr>
            <tr>
                <th>Employee Position:</th>
                <td>
                    <input type="text" name="name" id="position" size="45" value="test"/>
                </td>
            </tr>
            <tr>
                <th>Employee Salary:</th>
                <td>
                    <input type="text" name="name" id="salary" size="45" value="test"/>
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