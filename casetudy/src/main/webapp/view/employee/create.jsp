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
    <h3>${mess}</h3>
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
                    <input type="text" name="name" id="name" size="45" pattern="\p{Lu}\p{Ll}+(\s\p{Lu}\p{Ll}+)*" />
                </td>
            </tr>

            <tr>
                <th>Employee Date Of Birth:</th>
                <td>
                    <input type="date" name="dateOfBirth" id="dateofbirth" size="30" pattern="\d\d[/]\d\d[/]\d{4}"/>
                </td>
            </tr>
            <tr>
                <th>Employee ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idcard" size="30" pattern="(\d{9}|\d{12})"/>
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
                    <input type="text" name="email" id="email" size="45" pattern="[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)"/>
                </td>
            </tr>
            <tr>
                <th>Employee Address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Employee Education_Degree:</th>
                <td>
                    <select name="education">
                        <option value="1" selected>Trung Cấp</option>
                        <option value="2">Cao Đẳng</option>
                        <option value="3">Đại Học</option>
                        <option value="4">Sau Đại Học</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Employee Position:</th>
                <td>
                    <select name="position">
                        <option value="1" selected>Quản Lý</option>
                        <option value="2">Nhân Viên</option>

                    </select>
                </td>
            </tr>
            <tr>
                <th>Employee Salary:</th>
                <td>
                    <input type="text" name="salary" id="salary" size="30"/>
                </td>
            </tr>
            <tr>
                <th>Employee division:</th>
                <td>
                    <select name="divisionId">
                        <option value="1" selected>Sale-Marketing</option>
                        <option value="2">Hành Chính</option>
                        <option value="3">Phục Vụ</option>
                        <option value="4">Quản Lý</option>
                    </select>
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