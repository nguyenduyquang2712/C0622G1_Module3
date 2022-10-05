<%--
  Created by IntelliJ IDEA.
  User: QUANG
  Date: 10/5/2022
  Time: 4:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
</head>
<body>
<center>
    <h1>Customer Management</h1>
    <h2>
        <a href="/customer">List All Customer</a>
    </h2>
</center>
<div align="center">
    <form method="post" action="/customer?action=create">
        <table border="1" cellpadding="5">
            <caption>
                <tr>
                    <th>Customer Name:</th>
                    <td>
                        <input type="text" name="name" id="name" size="45" value="test"/>
                    </td>
                </tr>

                <tr>
                    <th>Customer Date Of Birth:</th>
                    <td>
                        <input type="text" name="dateofbirth" id="dateofbirth" size="30"/>
                    </td>
                </tr>
                <tr>
                    <th>Gender:</th>
                    <td>
                        <input type="text" name="gender" id="gender" size="30"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer ID Card:</th>
                    <td>
                        <input type="text" name="idcard" id="idcard" size="30"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer Phone:</th>
                    <td>
                        <input type="text" name="phone" id="phone" size="30"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer Email:</th>
                    <td>
                        <input type="text" name="email" id="email" size="45"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer Type:</th>
                    <td>
                        <input type="text" name="customerType" id="customerType" size="30"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer Position:</th>
                    <td>
                        <input type="text" name="position" id="position" size="30"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer address:</th>
                    <td>
                        <input type="text" name="address" id="address" size="30"/>
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