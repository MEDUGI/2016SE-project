<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/11/15
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发信</title>
</head>
<body>
<form action="sendMessage.action" method="post">
    <input name="userTo" type="text" hidden="hidden" value=<s:property value="userTo"/>>
    <input name="userFrom" type="text" hidden="hidden" value="<s:property value="userFrom"/> ">
    站内信内容 <input name="message" type="text"> <br>
    <input type="submit" value="发送">
</form>
</body>
</html>
