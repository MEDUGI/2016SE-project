<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/11/18
  Time: 3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>呃唔，出错了。。。</title>
</head>
<body>
<s:property value="errorMessage"/> <br>
<button onclick="window.open('index.action')">
  回到登录界面
</button>
</body>
</html>
