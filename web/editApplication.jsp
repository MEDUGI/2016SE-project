<%@ taglib prefix="s" uri="/struts-tags" %>
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
<form action="sendApplication.action" method="post">
    致 <input name="userTo" type="text" value=<s:property value="userTo"/>>
    内容 <input name="message" type="text"> <br>
    <input type="submit" value="发送申请">
</form>
</body>
</html>
