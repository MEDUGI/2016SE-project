<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>您好，欢迎您，请登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />
    <!-- Bootstrap -->
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

            <form id="form-signin" class="form-signin" action="login_normal" role="form" id="form_login" method="post">
              <section>
                <div class="input-group">
                  <input type="text" class="form-control" name="username" placeholder="邮箱">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group">
                  <input type="password" class="form-control" name="password" placeholder="密码">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
                <div class="input-group-btn">
                  <select class="form-control" name="kind" placeholder="密码">
                    <option value="student">学生</option>
                    <option value="teacher">导师</option>
                  </select>
                </div>
              </section>
              <section class="controls">
                <div class="checkbox check-transparent">
                  <input type="checkbox" value="1" id="remember" checked>
                  <label for="remember">下次保持登录</label>
                </div>
                <a href="#">忘记了密码?</a>
              </section>
              <section class="log-in">
                <button class="btn btn-greensea">登录</button>
                <span>or</span>
                <a class="btn btn-slategray" href="register_stu.jsp">学生注册</a>
                <a class="btn btn-slategray" href="register_teacher.jsp">导师注册</a>
              </section>
            </form>
          </div>


        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->
  </body>
</html>
      
