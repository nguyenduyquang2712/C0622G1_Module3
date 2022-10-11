<%--
  Created by IntelliJ IDEA.
  User: QUANG
  Date: 10/5/2022
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="bootstrap520/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="datatables/css/dataTables.bootstrap5.min.css"/>
</head>
<body style=" background-image: url(https://img.wallpapersafari.com/desktop/1600/900/22/47/iU4Gez.jpg);">
<h1 style="text-align: center">User Management</h1>
<h2 style="text-align: center">
    <a class="btn btn-primary" href="/home">HOME</a>
</h2>

<td>
    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
            data-bs-target="#add">
       Add New Employee
    </button>
    <div class="modal fade " id="add" tabindex="-1"
         aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel_add">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <div class="modal-body">
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
                                    <input type="text" name="name" id="name" size="30" value="${employee.employeeName}" />
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
                                        if test="${map.get('address')!=null}">
                                        <br>
                                        <span style="color:red">${map.get('phoneNumber')}</span>
                                    </c:if>
                                </td>
                            </tr>
                            <tr>
                                <th>Employee Email:</th>
                                <td>
                                    <input type="text" name="email" id="email" size="30" value="${employee.employeeEmail}" />
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
                                    <input type="text" name="address" id="address" size="30" value="${employee.employeeAddress}"/>
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
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                    </button>
                </div>
            </div>
        </div>
    </div>
</td>

<h2>
    <a class="btn btn-danger" href="/employee?action=create">Add New Employee</a>
</h2>
<form action="/employee">
    <input type="hidden" name="action" value="search">
    <input type="text" name="searchName" placeholder="...search name">
    <input type="text" name="searchEmail" placeholder="...search Email">
    <select name="divisionType" >
        <option value="" selected hidden>Type</option>
        <c:forEach var="mapDivision" items="${mapDivision}">
        <option value="${mapDivision.value}">${mapDivision.value}</option>
        </c:forEach>
    </select>
    <input class="btn btn-primary" type="submit" value="Search">
</form>
<div align="center">
    <caption><h2>List of Employee</h2></caption>
    <table id="tableemployee" class="table table-dark table-hover" style="width:100%" border="1" cellpadding="5">
        <thead>
        <tr>
            <th>STT</th>
            <th>Name</th>
            <th>Date_Of_Birth</th>
            <th>ID_Card</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
            <th>Education_Degree</th>
            <th>Position</th>
            <th>Division</th>
            <th>Salary</th>
            <th>Action</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employeeList}" varStatus="loop">
            <tr>
                <td><c:out value="${loop.count}"/></td>
                <td><c:out value="${employee.employeeName}"/></td>
                <td><c:out value="${employee.employeeBirthday}"/></td>
                <td><c:out value="${employee.employeeIdCard}"/></td>
                <td><c:out value="${employee.employeePhone}"/></td>
                <td><c:out value="${employee.employeeEmail}"/></td>
                <td><c:out value="${employee.employeeAddress}"/></td>
                <c:if test="${employee.educationDegreeId == 1}">
                    <td>Trung Cấp</td>
                </c:if>
                <c:if test="${employee.educationDegreeId == 2}">
                    <td>Cao Đẳng</td>
                </c:if>
                <c:if test="${employee.educationDegreeId == 3}">
                    <td>Đại Học</td>
                </c:if>
                <c:if test="${employee.educationDegreeId == 4}">
                    <td>Sau Đại Học</td>
                </c:if>
                <c:if test="${employee.positionId==1}">
                    <td>Quản Lý</td>
                </c:if>
                <c:if test="${employee.positionId==2}">
                    <td>Nhân Viên</td>
                </c:if>
                <td>${mapDivision.get(employee.divisionId)}</td>

                <td>
                    <c:out value="${employee.employeeSalary}"/>
                </td>

                <td>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#edit${employee.employeeId}">
                        Edit
                    </button>
                    <div class="modal fade " id="edit${employee.employeeId}" tabindex="-1"
                         aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog ">
                            <div class="modal-content bg-dark">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel_edit">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn sửa <strong class="text-danger">${employee.employeeName}</strong>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                    <a href="employee?action=edit&id=${employee.employeeId}"
                                       class="btn btn-danger">Edit</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                            data-bs-target="#delete${employee.employeeId}">
                        Delete
                    </button>
                    <div class="modal fade " id="delete${employee.employeeId}" tabindex="-1"
                         aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog ">
                            <div class="modal-content bg-dark">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel_delete">Modal title</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn xóa <strong class="text-danger">${employee.employeeName}</strong>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                    </button>
                                    <a href="employee?action=delete&id=${employee.employeeId}" class="btn btn-danger">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="datatables/js/jquery.dataTables.min.js"></script>
<script src="datatables/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function () {
        $('#tableemployee').dataTable({
            "dom": 'lrtip',
            "lengthChange": false,
            "pageLength": 5,
        });
    });
</script>
</body>
</html>