<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/12/14
  Time: 7:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
  发信人：<s:property value="userFrom"></s:property>
  收信人：<s:property value="userTo"></s:property>
  标题：<s:property value="title"></s:property>
  日期：<s:property value="date"></s:property>
  正文：<s:property value="content"></s:property>
  <input name="userTo" type="text" hidden="hidden" value=<s:property value="opposite"/>>
  <input name="userFrom" type="text" hidden="hidden" value="<s:property value="username"/> ">
  回信标题 <input name="title" type="text"> <br>
  回信内容 <input name="message" type="text"> <br>
  <input type="submit" value="回复">
</body>
</html>
