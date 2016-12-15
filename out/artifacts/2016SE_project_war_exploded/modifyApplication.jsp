<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/12/14
  Time: 4:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>研究生导师互选推荐系统</title>
</head>
<body>
<form action="sendApplication.action" method="post">
  致 <input name="userTo" type="text" value=<s:property value="userTo"/>>
  内容 <input name="message" type="text" value="<s:property value="message"/> "> <br>
  <input type="submit" value="确认修改">
</form>
</body>
</html>
