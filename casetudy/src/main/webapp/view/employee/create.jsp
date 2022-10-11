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
            <c:if test="${mess!=null}">
                <p>${mess}</p>
            </c:if>
            <tr>
                <th>Employee Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" value="${employee.employeeName}" />
                    <c:if test="${map.get('name')!=null}">
                        <br>
                        <span style="color:red">${map.get('name')}</span>
                    </c:if>
                </td>
            </tr>

            <tr>
                <th>Employee Date Of Birth:</th>
                <td>
                    <input type="date" name="dateOfBirth" id="dateofbirth" size="30" value="${employee.employeeBirthday}" />
                    <c:if test="${map.get('dateOfBirth')!=null}">
                        <br>
                        <span style="color:red">${map.get('dateOfBirth')}</span>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>Employee ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idcard" size="30" value="${employee.employeeIdCard}" />
                    <c:if test="${map.get('idCard')!=null}">
                        <br>
                        <span style="color:red">${map.get('idCard')}</span>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>Employee Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="30" value="${employee.employeePhone}"/>
                    <c:if test="${map.get('phoneNumber')!=null}">
                        <br>
                        <span style="color:red">${map.get('phoneNumber')}</span>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>Employee Email:</th>
                <td>
                        <input type="text" name="email" id="email" size="45" value="${employee.employeeEmail}" />
                    <c:if test="${map.get('email')!=null}">
                        if test="${map.get('address')!=null}">
                        <br>
                        <span style="color:red">${map.get('email')}</span>
                    </c:if>
                </td>
            </tr>
            <tr>
                <th>Employee Address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" value="${employee.employeeAddress}"/>
                    <c:if test="${map.get('address')!=null}">
                        <br>
                        <span style="color:red">${map.get('address')}</span>
                    </c:if>
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
                    <input type="number" name="salary" id="salary" size="30" value="${employee.employeeSalary}" required/>
                    <c:if test="${map.get('salary')!=null}">
                        <br>
                        <span style="color:red">${map.get('salary')}</span>
                    </c:if>
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