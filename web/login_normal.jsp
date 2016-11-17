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
</head>
<body>
<%@include file="head.jsp"%>
<form action="login_normal" method="post">
    账号 <input name="mail" type="text"> <br>
    密码 <input name="password" type="text"> <br>
    <a href="change_pasword.jsp"> 更改密码 </a> <br>
    <a href="register_stu.jsp"> 学生注册 </a> <br>
    <a href="register_teacher.jsp"> 老师注册</a> <br>
    <input type="submit" value="登陆喽^_^">
</form>
</body>
</html>
