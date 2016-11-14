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
</head>
<body>
<form action="register_stu" method="post">
    邮箱  <input name="mail" type="text"><br>
    密码    <input name="secret" type="text"><br>
    重复密码 <input name="secret_repeat" type="text"><br>
    毕业院校 <input name="school" type="text"><br>
    学生号 <input name="stu_number" type="text"><br>
    <input type="submit" value="注册喽^_^">
</form>
</body>
</html>
