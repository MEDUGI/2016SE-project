<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/11/14
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人主页</title>
</head>
<body>
  <%@include file="head.jsp"%>
  个人主页
  <s:if test="#session.watchedUserstyle=='Student'">
    <div>
      <li>
        用户名：<s:property value="username"/>
      </li>
      <li>
        姓名：<s:property value="fullname"/>
      </li>
      <li>
        毕业院校：<s:property value="graduateSchool"/>
      </li>
      <li>
        学生号：<s:property value="studentNo"/>
      </li>
      <li>
        本科学分绩：<s:property value="studentNo"/>
      </li>
      <li>
        研究生入学考试成绩：<s:property value="neepScore"/>
      </li>
      <li>
        获得奖项：<s:property value="awardsCollection"/>
      </li>
      <li>
        邮件地址：<s:property value="emailAddress"/>
      </li>
      <li>
        工作领域：<s:property value="workingAreas"/>
      </li>
      <li>
        联系电话: <s:property value="mobileNo"/>
      </li>
    </div>
  </s:if>
  <s:elseif test="#session.watchedUserstyle=='Professor'">
    <li>
      用户名：<s:property value="username"/>
    </li>
    <li>
      姓名：<s:property value="fullname"/>
    </li>
    <li>
      工作单位：<s:property value="employerUnit"/>
    </li>
    <li>
      证件号码：<s:property value="identityCardNo"/>
    </li>
    <li>
      工作领域：<s:property value="workingArea"/>
    </li>
    <li>
      发表文章：<s:property value="papersPublished"/>
    </li>
    <li>
      招生名额: <s:property value="accomodationNumber"/>
    </li>
    <li>
      已用招生名额：<s:property value="acceptedNumber"/>
    </li>
    <li>
      邮件地址：<s:property value="emailAddress"/>
    </li>
    <li>
      联系电话: <s:property value="mobileNo"/>
    </li>
  </s:elseif>
  <s:if test="#session.username==#session.watchedUsername">
    <a href="/showChangePage.action">修改完善个人信息</a>
  </s:if>
</body>
</html>
