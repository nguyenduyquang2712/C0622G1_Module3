<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a class="btn btn-primary" href="users?action=users">HOME</a>
    </h2>
    <h2>
        <a class="btn btn-danger" href="/users?action=create">Add New User</a>
    </h2>
    <form action="/users">
        <input type="hidden" name="action" value="search">
        <input type="text" name="country">
        <input class="btn btn-primary" type="submit" value="Search">
    </form>
</center>
<div align="center">
    <caption><h2>List of Users</h2></caption>
    <table class="table table-dark table-hover" style="width:100%" border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#edit${user.id}">
                        Edit
                    </button>
                    <div class="modal fade " id="edit${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog ">
                            <div class="modal-content bg-dark">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel_edit">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn sửa <strong class="text-danger">${user.name}</strong>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                    <a href="users?action=edit&id=${user.id}" class="btn btn-danger">Edit</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#delete${user.id}">
                        Delete
                    </button>
                    <div class="modal fade " id="delete${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog ">
                            <div class="modal-content bg-dark">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel_delete">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn xóa <strong class="text-danger">${user.name}</strong>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                    <a href="users?action=delete&id=${user.id}" class="btn btn-danger">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>