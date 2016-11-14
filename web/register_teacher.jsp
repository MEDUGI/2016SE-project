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
    <title>注册老师</title>
</head>
<body>
<form action="register_teacher" method="post">
    邮箱  <input name="mail" type="text"><br>
    密码    <input name="secret" type="text"><br>
    重复密码 <input name="secret_repeat" type="text"><br>
    毕业院校 <input name="school" type="text"><br>
    证件号码 <input name="teacher_id" type="text"><br>
    <input type="submit" value="注册喽^_^">
</form>
</body>
</html>
