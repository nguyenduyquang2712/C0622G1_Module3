<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Hiển thị danh sách khách hàng</title>
  <style>
   td{
      width: 200px;
      height: 200px;
    }
    img {
      height: 150px;
      width: 150px;
    }
  </style>
</head>
<body>
<input>
<table border="1px" width="100%" style="text-align: center" >
  <caption><h1>Danh Sách Khách Hàng</h1></caption>
  <tr>
    <th >Họ Và Tên</th>
    <th>Ngày Sinh</th>
    <th>Địa Chỉ</th>
    <th >Ảnh</th>
  </tr>
  <c:forEach var="customer" items="${customers}">
    <tr>
      <td><c:out value="${customer.getName()}"/></td>
      <td><c:out value="${customer.getDayOfBirth()}"/></td>
      <td><c:out value="${customer.getAddress()}"/></td>
      <td>
        <img src="<c:out value="${customer.getPicture()}"/>">

      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>