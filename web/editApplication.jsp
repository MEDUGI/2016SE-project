<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/11/16
  Time: 4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> 填写申请信息 </title>
</head>
<body>
<form action="sendMessage" method="post">
    <input name="stu" type="text" value=${cookie.client.username} hidden>
    <input name="pro" type="text" value=${professor} hidden>
    内容 <input name="content" type="text"> <br>
    <input type="submit" value="发送申请">
</form>
</body>
</html>
