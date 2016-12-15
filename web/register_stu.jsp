<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>学生注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <link rel='stylesheet' href='css/jquery-ui.css'>
    <link rel='stylesheet prefetch' href='css/bootstrap.min.css'>

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    <script src="js/modernizr.js"></script>
    <script src="js/jquery.min.js"></script>
    <script>
        function select_school() {
            var id = $("#area").val();
            var url = "school.action";
            var params = {
                'id': id
            };
            $.post(url, params,callback);
        }


        function callback(results,status) {
            if (status == "success") {
                school = $("#school");
                school.empty();
                results = results.substring(1,results.length-1);
                results.split(",").forEach(function (item){
                    school.append("<option value = " + "\"" + item + "\">" + item + "</option>");
                });
            }
        }

        function init_area() {
            var area = $("#area");
            var areas = "北京,天津,辽宁,吉林,黑龙江,上海,江苏,浙江,安徽,福建,山东,湖北,湖南,广东,重庆,四川,陕西,甘肃,河北,山西,内蒙古,河南,海南,广西,贵州,云南,西藏,青海,宁夏,新疆,江西,香港,澳门";
            areas.split(",").forEach(function (one) {
                area.append ("<option value = " + "\"" + one + "\">" + one + "</option>");
            })
        }

    </script>
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link href="assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="bg-1" onload = "init_area()">

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

                <form action="register_stu" role="form" id="form_login" method="post">

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
                                真实姓名
                            </div>

                            <input type="text" class="form-control" name="fullname" placeholder="Username" autocomplete="off" />
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
                                毕业院校
                            </div>
                            <select class="form-control selectpicker" data-style="btn-info" id="area" name="area" onchange="select_school();">
                            </select>

                            <select class="form-control" id="school" name="school">
                                <option value="null"> 未选择 </option>
                            </select>

                            <!-- <input type="text" class="form-control" name="school" autocomplete="off" /> -->
                        </div>

                    </div>

                    <div class="form-group">

                        <div class="input-group">
                            <div class="input-group-addon" id="tips">
                                学号
                            </div>

                            <input type="text" class="form-control" name="stu_number" autocomplete="off" />
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

