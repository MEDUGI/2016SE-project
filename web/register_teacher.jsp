<%--
  Created by IntelliJ IDEA.
  User: forandroid
  Date: 16-11-14
  Time: 下午9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导师注册</title>
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

        <form action="register_teacher" role="form" id="form_login" method="post">

            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon" id="tips">
                        用户名
                    </div>

                    <input type="text" class="form-control" name="username" id="username" placeholder="Username" autocomplete="off" />
                </div>

            </div>

            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon" id="tips">
                        密码
                    </div>

                    <input type="password" class="form-control" name="secret" placeholder="Password" autocomplete="off" />
                </div>

            </div>
            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon" id="tips">
                        重复密码
                    </div>

                    <input type="password" class="form-control" name="secret_repeat" placeholder="Password" autocomplete="off" />
                </div>

            </div>

            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon" id="tips">
                        真实姓名
                    </div>

                    <input type="text" class="form-control" name="fullname" autocomplete="off" />
                </div>

            </div>

            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon" id="tips">
                        工作单位
                    </div>

                    <input type="text" class="form-control" name="employerUnit" autocomplete="off" />
                </div>

            </div>

            <div class="form-group">

                <div class="input-group">
                    <div class="input-group-addon" id="tips">
                        教师编号
                    </div>

                    <input type="text" class="form-control" name="teacher_id" autocomplete="off" />
                </div>

            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-block btn-login">
                    <i class="icon-signin"></i>
                    Register
                </button>
            </div>
        </form>

    </div>

</body>
</html>
