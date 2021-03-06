<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Định giá xe cũ miền tây</title>
    <link rel="shortcut icon" href="<c:url value="/resources/img/favicon.png" />" type="image/x-icon"/>

    <link href="<c:url value="/resources/jAlert/jquery.alerts.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/fontawesome-free/css/all.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/sb-admin-2.min.css" />" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
    <script src="<c:url value="/resources/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/sb-admin-2.min.js" />"></script>
    <script src="<c:url value="/resources/bootstrap/js/bootstrap.bundle.min.js" />"></script>
    <script src="<c:url value="/resources/jquery-easing/jquery.easing.min.js" />"></script>
    <script src="<c:url value="/resources/jAlert/jquery.alerts.js" />"></script>

</head>

<script>
    $(function () {
        $("#login").click(function (e) {
            var taikhoan = $("#userName").val();
            var matkhau = $("#passWord").val();
            $.post("dang-nhap", {
                taikhoan: taikhoan,
                matkhau: matkhau
            }).done(function (data) {
                if (data == "SUCCESS"){
                    $(location).attr("href", "trang-chu");
                } else {
                    jAlert("Đăng nhập thất bại", "Thông báo");
                }
            });
        });
    });
</script>
<body class="bg-gradient-primary">

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">ĐỊNH GIÁ XE CŨ MIỀN TÂY (ĐGXCMT)</h1>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user"
                                           id="userName" placeholder="Enter Username">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-user"
                                           id="passWord" placeholder="Password">
                                </div>
                                <button id="login" class="btn btn-primary btn-user btn-block">
                                    Login
                                </button>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="quen-mat-khau">Quên mật khẩu?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="dang-ky">Đăng ký tài khoản!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

</body>

</html>