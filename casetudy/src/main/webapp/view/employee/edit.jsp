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
                    <input type="text" name="name" id="name" size="45" value="${employee.employeeName}" pattern="\p{Lu}\p{Ll}+(\s\p{Lu}\p{Ll}+)*" >
                </td>
            </tr>
            <tr>
                <th>Employee Employee Date Of Birth:</th>
                <td>
                    <input type="text" name="date" id="date" size="45" value="${employee.employeeBirthday}" pattern="\d\d[/]\d\d[/]\d{4}">
                </td>
            </tr>
            <tr>
                <th>Employee Employee ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idCard" size="45" value="${employee.employeeIdCard}" pattern="(\d{9}|\d{12})">
                </td>
            </tr>
            <tr>
                <th>Employee Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45" value="${employee.employeePhone}">
                </td>
            </tr>
            <tr>
                <th>Employee Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" value="${employee.employeeEmail}" pattern="[A-Za-z0-9]+[A-Za-z0-9]*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)">
                </td>
            </tr>
            <tr>
                <th>Employee Address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" value="${employee.employeeAddress}">
                </td>
            </tr>
            <tr>
            <th>Employee Education_Degree:</th>
                <td>
                    <select name="education">
                        <option value="1" ${employee.educationDegreeId==1?"selected":""}>Trung Cấp</option>
                        <option value="2" ${employee.educationDegreeId==2?"selected":""}>Cao Đẳng</option>
                        <option value="3" ${employee.educationDegreeId==3?"selected":""}>Đại Học</option>
                        <option value="4" ${employee.educationDegreeId==4?"selected":""}>Sau Đại Học</option>
                    </select>
                </td>


        </tr>
            <tr>
                <th>Employee Position:</th>
                <td>
                    <select name="position">
                        <option value="1" ${employee.positionId==1?"selected":""}>Quản Lý</option>
                        <option value="2" ${employee.positionId==2?"selected":""}>Nhân Viên</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Employee Salary:</th>
                <td>
                    <input type="text" name="salary" id="salary" size="45" value="${employee.employeeSalary}">
                </td>
            </tr>
            <tr>
                <th>Employee Division:</th>
                <td>
                    <select name="division">
                        <option value="1"${employee.divisionId==1?"selected":""}>Sale-Marketing</option>
                        <option value="2"${employee.divisionId==2?"selected":""}>Hành Chính</option>
                        <option value="3"${employee.divisionId==3?"selected":""}>Phục Vụ</option>
                        <option value="4"${employee.divisionId==4?"selected":""}>Quản Lý</option>
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