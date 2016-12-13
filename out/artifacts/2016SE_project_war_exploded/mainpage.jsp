<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/11/17
  Time: 22:27
  Template author: william@blacktie.co
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="ico/favicon.png">

    <title>个人主页</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/main.css" rel="stylesheet">

    <link rel="stylesheet" href="css/font-awesome.min.css">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/smoothscroll.js"></script>
    <script src="js/Chart.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body data-spy="scroll" data-offset="0" data-target="#nav">

<div id="section-topbar">
    <div id="topbar-inner">
        <div class="container">
            <div class="row">
                <div class="dropdown">
                    <ul id="nav" class="nav">
                        <li class="menu-item"><a class="smoothScroll" href="/login_normal.jsp" title="主页"><i class="icon-home"></i></a></li>
                        <li class="menu-item"><a class="smoothScroll" href="#about" title="个人简介"><i class="icon-user"></i></a></li>
                        <li class="menu-item"><a class="smoothScroll" href="#resume" title="简历"><i class="icon-file"></i></a></li>
                        <li class="menu-item"><a class="smoothScroll" href="#contact" title="联系方式"><i class="icon-envelope"></i></a></li>
                        <s:if test='userstyle == "Professor"'>
                            <li class="menu-item"><a class="smoothScroll" href="recommand.action" title="查看推荐学生"><i class="icon-thumbs-up"></i></a></li>
                        </s:if>
                        <s:elseif test='userstyle == "Student"'>
                            <li class="menu-item"><a class="smoothScroll" href="recommand.action" title="查看推荐导师"><i class="icon-thumbs-up"></i></a></li>
                        </s:elseif>
                        <li class="menu-item"><a class="smoothScroll" href="logout.action" title="注销"><i class="icon-eraser"></i></a></li>
                    </ul><!--/ uL#nav -->
                </div><!-- /.dropdown -->

                <div class="clear"></div>
            </div><!--/.row -->
        </div><!--/.container -->

        <div class="clear"></div>
    </div><!--/ #topbar-inner -->
</div><!--/ #section-topbar -->

<div id="headerwrap"> <!-- 这里之后有一段JS代码去操作headerwrap的背景 -->
    <div class="container">
        <div class="row centered">
            <div class="col-lg-12">
                <h1><s:property value="fullname"/></h1>
                <h3><s:property value="#session.watchedUserstyle"/> | <s:property value="username"/></h3>
                <s:if test="#session.username==#session.watchedUsername">
                    <a href="/showChangePage.action">修改个人信息</a>
                </s:if>
            </div><!--/.col-lg-12 -->
        </div><!--/.row -->
    </div><!--/.container -->
</div><!--/.#headerwrap -->


<section id="about" name="about"></section>
<div id="intro">
    <div class="container">
        <div class="row">

            <div class="col-lg-2 col-lg-offset-1">
                <h5>个人简介</h5>
            </div>
            <div class="col-lg-6">
                <p><s:property  value="introduction" /></p> <!-- 个人简介... -->
            </div>
            <div class="col-lg-3">
                <p><a href="/create_resume.action"><i class="icon-file"></i></a> <sm>生成resume</sm></p>
            </div>

        </div><!--/.row -->
    </div><!--/.container -->
</div><!--/ #intro -->

<s:if test="#session.username==#session.watchedUsername">
    <a href="/showApplications.action">
        查看站内信与申请信息
    </a>
</s:if>

</div>
<section id="resume" name="resume"></section>
<!--EDUCATION DESCRIPTION -->
<div class="container desc">
    <div class="row">

        <div class="col-lg-2 col-lg-offset-1">
            <h5>简历信息</h5>
        </div>
        <div class="col-lg-6">
            <s:if test='userstyle == "Professor"'>
                <p><t><s:property value="employerUnit" /></t><br/>
                    <s:property value="workingArea" /> <br/>
                    <i><s:property value="paperPublished" /></i>
                </p>
            </s:if>
            <s:elseif test='userstyle == "Student"'>
                <p><t><s:property value="graduateSchool" /></t><br/>
                    <s:property value="major" /> <br/>
                    <i><s:property value="awardsCollection" /></i>
                </p>
            </s:elseif>
        </div>
        <div class="col-lg-3">
            <p><sm>GRADUATING IN MAY 2014</sm><br/>
                <imp><sm>IN PROGRESS</sm></imp>
            </p>
        </div>

        <!--<div class="col-lg-6 col-lg-offset-3">
            <p><t>Degree of Web Developer</t><br/>
                Hastings University <br/>
                <i>2 Years Course</i>
            </p>
        </div>
        <div class="col-lg-3">
            <p><sm>JUNE 2012</sm></p>
        </div> -->

    </div><!--/.row -->
    <br>
    <hr>
</div><!--/.container -->

<section id="contact" name="contact"></section>
<!--FOOTER DESCRIPTION -->
<div id="footwrap">
    <div class="container">
        <div class="row">

            <div class="col-lg-2 col-lg-offset-1">
                <h5>联系方式</h5>
            </div>
            <div class="col-lg-6">
                <p><t>Email</t><br/>
                    <s:property value="username" /> <br/>
                </p>
                <p><t>联系地址</t><br/>
                    <s:property value="physicalAddress" /><br/>
                </p>
                <p><t>电话号码</t><br/>
                    <s:property value="mobileNo" /> <br/>
                </p>
            </div>
            <div class="col-lg-3">
                <p><sm>SOCIAL LINKS</sm></p>
                <p>
                    <a href="#"><i class="icon-dribbble"></i></a>
                    <a href="#"><i class="icon-twitter"></i></a>
                    <a href="#"><i class="icon-facebook"></i></a>
                    <a href="#"><i class="icon-linkedin"></i></a>
                    <a href="#"><i class="icon-apple"></i></a>

                </p>
            </div>
        </div><!--/.row -->
    </div><!--/.container -->
</div><!--/ #footer -->

<div id="c">
    <div class="container">
        <p>Thanks to <a href="http://www.blacktie.co">BLACKTIE.CO</a> Templates.</p>

    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
</body>
</html>
