<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<div class="container-fluid px-0 vh-100" >
    <div class="card-header" style="height: 130px;  background-image: url(https://img.wallpapersafari.com/desktop/1600/900/22/47/iU4Gez.jpg); " >
        <img style="width: 100px;height: 100px" src="/img/codegym.jpg">
        <span style="padding-left: 950px">NGUYỄN DUY QUANG</span>

    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" >
        <div class="container-fluid">
            <a class="navbar-brand" href="/home">HOME</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Contract</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="row mx-0 position-relative" style="height: 100%;margin-top: 5% " >
        <div class="col-12 col-sm -4 col-md-2  px-0" style="background-image: url(https://img.wallpapersafari.com/desktop/1600/900/22/47/iU4Gez.jpg);" >
            <div class="list-group min-vh-100 navbar-nav-scroll " style="border: 2px solid #7952b3; height: 100%">
                <a  class=" btn btn-primary">Liên Hệ</a>
                <a  class=" btn btn-primary" style="margin-top: 10px">Hỗ Trợ</a>
                <a  class=" btn btn-primary" style="margin-top: 10px">Hình Ảnh</a>
            </div>
        </div>
        <div class="footer" style="z-index: 1000; display: flex; flex-direction: column; clear: both; justify-content: center; margin-top: 10px; background-image: url(https://wallpaperaccess.com/full/3953563.jpg);  ">
            <h5 style="text-align: center;color: white">DESIGN BY QUANGND</h5>
            <p style="text-align: center;color: white">&copy;FURAMA - officially operated in 1997.</p>
        </div>
    </div>
</div>
</body>
</html>
