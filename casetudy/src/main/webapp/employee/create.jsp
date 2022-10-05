<%--
  Created by IntelliJ IDEA.
  User: QUANG
  Date: 10/5/2022
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee Management Application</title>
</head>
<body>
<center>
    <h1>Employee Management</h1>
    <h2>
        <a href="/employee">List All Employee</a>
    </h2>
</center>
<div align="center">
    <form method="post" action="/employee?action=create">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New Employee</h2>
            </caption>
            <tr>
                <th>Employee Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" value="test"/>
                </td>
            </tr>

            <tr>
                <th>Employee Date Of Birth:</th>
                <td>
                    <input type="text" name="dateofbirth" id="dateofbirth" size="30"/>
                </td>
            </tr>
            <tr>
                <th>Employee ID Card:</th>
                <td>
                    <input type="text" name="idcard" id="idcard" size="30"/>
                </td>
            </tr>
            <tr>
                <th>Employee Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="30"/>
                </td>
            </tr>
            <tr>
                <th>Employee Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee Education_Degree:</th>
                <td>
                    <input type="text" name="education" id="education" size="30"/>
                </td>
            </tr>
            <tr>
                <th>Employee Position:</th>
                <td>
                    <input type="text" name="position" id="position" size="30"/>
                </td>
            </tr>
            <tr>
                <th>Employee Salary:</th>
                <td>
                    <input type="text" name="salary" id="salary" size="30"/>
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