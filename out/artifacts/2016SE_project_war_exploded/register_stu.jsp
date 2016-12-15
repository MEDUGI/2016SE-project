<%--
  Created by IntelliJ IDEA.
  User: forandroid
  Date: 16-11-14
  Time: 下午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息注册</title>
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

    </script>
</head>
<body class="login-page">
<%@include file="head.jsp"%>
<div class="login-form">
    <div class="login-content">

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
                        <option value = "null"> 未选择 </option>
                        <option value = '0'> 北京 </option>
                        <option value = '1'> 哈尔滨 </option>
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

</body>
</html>
