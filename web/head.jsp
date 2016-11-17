<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/11/17
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" type="text/css" href="css/head_style.css">
</head>
<%@include file="Bootstrap.jsp"%>
<div id="first">
    <li>
        <h1>&nbsp;研究生导师互选推荐系统</h1>
    </li>
</div>

<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.action">首页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <s:if test='#session.userstyle == "Teacher"'>
                    <li><a href="login.action"> 查看学生 </a></li>
                </s:if>
                <s:else>
                    <li><a href="login.action"> 查看导师 </a></li>
                </s:else>
                <li><a href="">查看推荐</a></li>
                <li><a href="">更改个人信息</a> </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <s:if test="#session.username == null">
                    <li><a href="login.action">登录</a></li>
                </s:if>
                <s:else>
                    <li><a hrsef="mainpage.action">${session.username}</a></li>
                    <li><a href="logout.action">注销</a></li>
                </s:else>
            </ul>
        </div>
    </div>

</nav>
