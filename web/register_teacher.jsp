<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>导师注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link href="assets/css/minimal.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <link rel='stylesheet' href='css/jquery-ui.css'>
    <link rel='stylesheet prefetch' href='css/bootstrap.min.css'>

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

    <script src="js/modernizr.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="bg-1">


<!-- Wrap all page content here -->
<div id="wrap">
    <!-- Make page fluid -->
    <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12 full-page login">


            <div class="inside-block">
                <img src="assets/images/logo-big.png" alt class="logo">
                <h1><strong>欢迎您</strong> 游客</h1>
                <h5>研究生导师互选推荐系统</h5>

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


        </div>
        <!-- /Page content -->
    </div>
</div>
<!-- Wrap all page content end -->
</body>
</html>