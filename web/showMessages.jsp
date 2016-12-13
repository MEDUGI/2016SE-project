<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/12/14
  Time: 1:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>研究生导师互选推荐系统</title>
</head>
<body>
未读的信息：
<table border="1">
  <tr>
    <td>发信人</td>
    <td>发信日期</td>
    <td>内容</td>
    <td></td>
    <td></td>
  </tr>
  <s:iterator value="unreadMessages">
    <tr>
      <td><s:property value="from"/></td>
      <td><s:property value="date"/></td>
      <td><s:property value="content"/></td>
      <td><a href="replyMessage.action?id=<s:property value="ID"/>">回信</a></td>
      <td><a href="markRead.action?id=<s:property value="ID"/> ">标为已读</a></td>
    </tr>
  </s:iterator>
</table>
已读的信息：
<table border="1">
  <tr>
    <td>发信人</td>
    <td>发信日期</td>
    <td>内容</td>
    <td></td>
    <td></td>
  </tr>
  <s:iterator value="readMessages">
    <tr>
      <td><s:property value="from"/></td>
      <td><s:property value="date"/></td>
      <td><s:property value="content"/></td>
      <td><a href="replyMessage.action?id=<s:property value="ID"/>">回信</a></td>
      <td><a href="deleteMessage.action?id=<s:property value="ID"/>">删除</a></td>
    </tr>
  </s:iterator>
</table>
</body>
</html>
