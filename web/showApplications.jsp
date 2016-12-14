<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/12/13
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申请管理</title>
</head>
<body>
待批复的请求：
<table border="1">
  <tr>
    <td>发出</td>
    <td>发至</td>
    <td>发出日期</td>
    <td>附言</td>
    <td>查看主页</td>
    <td>接受/拒绝</td>
  </tr>
  <s:iterator value="receivedApplication">
    <tr>
      <td><s:property value="from"/></td>
      <td><s:property value="to"/></td>
      <td><s:property value="applydate"/></td>
      <td><s:property value="message"/> </td>
      <td><a href="mainpage.action?username=<s:property value="to"/>">查看主页</a></td>
      <td><a href="replyApplication.action?isAccepted=true&applicationId=<s:property value="ID"/>">同意</a> <a href="replyApplication.action?isAccepted=false&applicationId=<s:property value="ID"/>">拒绝</a> </td>
    </tr>
  </s:iterator>
</table>

我发出的请求：
<table border="1">
  <tr>
    <td>发至</td>
    <td>发出日期</td>
    <td>附言</td>
    <td>修改</td>
  </tr>
  <s:iterator value="myApplication">
    <tr>
      <td><s:property value="to"/></td>
      <td><s:property value="applydate"/></td>
      <td><s:property value="message"/> </td>
      <td><a href="modifyApplication.action?applicationId=<s:property value="ID"/> ">修改</a></td>
    </tr>
  </s:iterator>
</table>

已生效的请求：
<table border="1">
  <tr>
    <td>发出</td>
    <td>发至</td>
    <td>发出日期</td>
    <td>查看主页</td>
  </tr>
  <s:iterator value="succeededApplication">
    <tr>
      <td><s:property value="from"/></td>
      <td><s:property value="to"/></td>
      <td><s:property value="applydate"/></td>
      <td><a href="mainpage.action?username=<s:property value="to"/>">查看主页</a></td>
    </tr>
  </s:iterator>
</table>
<a href="mainpage.action">
  回到主页
</a>
</body>
</html>
