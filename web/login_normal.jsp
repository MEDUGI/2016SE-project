<%--
  Created by IntelliJ IDEA.
  User: forandroid
  Date: 16-11-14
  Time: 下午10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <link rel='stylesheet' href='css/jquery-ui.css'>
    <link rel='stylesheet prefetch' href='css/bootstrap.min.css'>

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

    <script src="js/modernizr.js"></script>
</head>
<body class="login-page">
    <%@include file="head.jsp"%>
    <div class="login-form">
    <div class="login-content">

        <form action="login_normal" role="form" id="form_login" method="post">

            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="icon-user"></i>
                    </div>

                    <input type="text" class="form-control" name="mail" id="username" placeholder="Username" autocomplete="off" />
                </div>

            </div>

            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="icon-key"></i>
                    </div>

                    <input type="password" class="form-control" name="password" id="password" placeholder="Password" autocomplete="off" />
                </div>

            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block btn-login">
                    <i class="icon-signin"></i>
                    Log In
                </button>
            </div>
            </form>
            <div class="form-group">
                <a href="change_pasword.jsp"> 更改密码 </a> <br>
            </div>
        <div class="form-group">
            <a href="register_stu.jsp"> 学生注册 </a> <br>
        </div>
        <div class="form-group">
            <a href="register_teacher.jsp"> 老师注册</a> <br>
        </div>


    </div>

</body>
</html>
