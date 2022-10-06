<%--
  Created by IntelliJ IDEA.
  User: QUANG
  Date: 10/6/2022
  Time: 9:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid px-0 vh-100" >
    <nav class="navbar navbar-expand-lg navbar-light bg-light" >
        <div class="container-fluid">
                            <li class="nav-item dropdown" style="list-style: none">
                                <a class="nav-link active dropdown-toggle btn " href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Add Facility
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">Room</a></li>
                                    <li><a class="dropdown-item" href="#">House</a></li>
                                    <%--              <li><hr class="dropdown-divider"></li>--%>
                                    <li><a class="dropdown-item" href="/service?action=create&type=villa">Villa</a></li>
                                </ul>
                            </li>
        </div>
    </nav>

<table id="facilityTable" class="table table-light table-striped table-bordered">
    <thead>
    <tr class="table-dark text-light">
        <th class="text-center"><i class="fa-solid fa-dog"></i></th>
        <th>Name</th>
        <th>Area</th>
        <th>Cost</th>
        <th class="text-center">Max people</th>
        <th>Standard</th>
        <th>Description</th>
        <th>Pool area</th>
        <th class="text-center">Number of Floors</th>
        <th>Facility Free</th>
        <th>Rent type</th>
        <th>Facility type</th>
        <th class="text-center">Edit</th>
        <th class="text-center">Delete</th>
    </tr>
    </thead>
</table>
</div>
</body>
</html>
