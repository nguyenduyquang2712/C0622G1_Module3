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
                    <input type="text" name="name" id="name" size="45" value=${employee.employeeName}/>
                </td>
            </tr>
            <tr>
                <th>Employee Employee Date Of Birth:</th>
                <td>
                    <input type="text" name="date" id="date" size="45" value=${employee.employeeBirthday}/>
                </td>
            </tr>
            <tr>
                <th>Employee Employee ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idCard" size="45" value=${employee.employeeIdCard}/>
                </td>
            </tr>
            <tr>
                <th>Employee Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45" value=${employee.employeePhone}/>
                </td>
            </tr>
            <tr>
                <th>Employee Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" value=${employee.employeeEmail}/>
                </td>
            </tr>
            <tr>
                <th>Employee Address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" value=${employee.employeeAddress}/>
                </td>
            </tr>
            <tr>
            <th>Employee Education_Degree:</th>
            <td>
                <input type="text" name="education" id="education" size="45" value=${employee.educationDegreeId}/>
            </td>
        </tr>
            <tr>
                <th>Employee Position:</th>
                <td>
                    <input type="text" name="position" id="position" size="45" value=${employee.positionId}/>
                </td>
            </tr>
            <tr>
                <th>Employee Salary:</th>
                <td>
                    <input type="text" name="salary" id="salary" size="45" value=${employee.employeeSalary}/>
                </td>
            </tr>
            <tr>
                <th>Employee Division:</th>
                <td>
                    <input type="text" name="division" id="division" size="45" value=${employee.divisionId}/>
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