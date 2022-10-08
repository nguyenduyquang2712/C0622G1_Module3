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
                    <input type="text" name="name" id="name" size="45" value="${customer.customerName}"/>
                </td>
            </tr>

            <tr>
                <th>Customer Customer Date Of Birth:</th>
                <td>
                    <input type="text" name="dateOfBirth" id="date" size="45" value="${customer.customerBirthday}"/>
                </td>
            </tr>
            <tr>
                <th>Customer gender:</th>
                <td>
                    <%--                    <input type="text" name="gender" id="gender" size="45" value="${customer.customerGender}"/>--%>
                        <input name="gender" type="radio" value="1" ${customer.customerGender==1?"checked":""}>Nam
                        <input name="gender" type="radio" value="0" ${customer.customerGender==0?"checked":""}>Nữ

                </td>
            </tr>
            <tr>
                <th>Customer Customer ID Card:</th>
                <td>
                    <input type="text" name="idCard" id="idCard" size="45" value="${customer.customerIdCard}"/>
                </td>
            </tr>
            <tr>
                <th>Customer Phone:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45" value="${customer.customerPhone}"/>
                </td>
            </tr>
            <tr>
                <th>Customer Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45" value="${customer.customerEmail}"/>
                </td>
            </tr>

            <tr>
                <th>Customer address:</th>
                <td>
                    <input type="text" name="address" id="address" size="45" value="${customer.customerAddress}"/>
                </td>
            </tr>
            <tr>
                <th>Customer Type:</th>
                <td>
                    <%--                    <input type="text" name="customerType" id="customerType" size="45"--%>
                    <%--                           value="${customer.customerTypeId}"/>--%>
                        <select name="customerType">
                            <option value="1" ${customer.customerTypeId == 1?"selected":""}>Diamond</option>
                            <option value="2"${customer.customerTypeId == 2?"selected":""}>Platinium</option>
                            <option value="3"${customer.customerTypeId == 3?"selected":""}>Gold</option>
                            <option value="4"${customer.customerTypeId == 4?"selected":""}>Silver</option>
                            <option value="5"${customer.customerTypeId == 5?"selected":""}>Member</option>
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