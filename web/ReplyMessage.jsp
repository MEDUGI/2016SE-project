<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/12/14
  Time: 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>研究生导师互选推荐系统</title>
</head>
<body>
<form action="sendMessage.action" method="post">
  <input name="userTo" type="text" hidden="hidden" value=<s:property value="userTo"/>>
  <input name="userFrom" type="text" hidden="hidden" value="<s:property value="userFrom"/> ">
  回信内容 <input name="message" type="text"> <br>
  <input type="submit" value="回复">
</form>
</body>
</html>
