<%--
  Created by IntelliJ IDEA.
  User: QUANG
  Date: 10/5/2022
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body style=" background-image: url(https://img.wallpapersafari.com/desktop/1600/900/22/47/iU4Gez.jpg);">
<h1 style="text-align: center">Customer Management</h1>
<h2 style="text-align: center">
    <a class="btn btn-primary" href="/home">HOME</a>
</h2>

<h2>
    <a class="btn btn-danger" href="/customer?action=create">Add New Customer</a>
</h2>
<form action="/customer">
    <input type="hidden" name="action" value="search">
    <input type="text" name="#" placeholder="...search">
    <input class="btn btn-primary" type="submit" value="Search">
</form>
<div align="center">
    <caption><h2>List of Customer</h2></caption>
    <table class="table table-dark table-hover" style="width:100%" border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Date_Of_Birth</th>
            <th>Gender</th>
            <th>ID_Card</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Customer_type</th>
            <th>Address</th>
            <th>Action</th>
            <th>Action</th>
        </tr>
        <%--        <c:forEach var="user" items="${listUser}">--%>
        <tr>
            <%--                <td><c:out value="${user.id}"/></td>--%>
            <%--                <td><c:out value="${user.name}"/></td>--%>
            <%--                <td><c:out value="${user.email}"/></td>--%>
            <%--                <td><c:out value="${user.country}"/></td>--%>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>test</td>
            <td>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                        data-bs-target="#edit${1}">
                    Edit
                </button>
                <div class="modal fade " id="edit${1}" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog ">
                        <div class="modal-content bg-dark">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel_edit">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có muốn sửa <strong class="text-danger">${2}</strong>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                </button>
                                <a href="customer?action=edit&id=${1}" class="btn btn-danger">Edit</a>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
            <td>
                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                        data-bs-target="#delete${1}">
                    Delete
                </button>
                <div class="modal fade " id="delete${1}" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog ">
                        <div class="modal-content bg-dark">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel_delete">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có muốn xóa <strong class="text-danger">${2}</strong>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                </button>
                                <a href="customer?action=delete&id=${1}" class="btn btn-danger">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <%--        </c:forEach>--%>
    </table>
</div>
</body>
</html>
