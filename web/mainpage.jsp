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
  个人主页QAQ
  <s:property value="isStudent"/>
  <s:property value="isProfessor"/>
  <s:set name="userstyletSet" value="userstyle"/>
  %{#userstyleSet}
  <s:property value="userstyle"/>
  <s:if test="%{#userstyleSet}.equals('Student')">
    mark
    <div>
      <li>
        用户名：<s:property value="username"/>
      </li>
      <li>
        毕业院校：<s:property value="student.graduateSchool"/>
      </li>
      <li>
        学生号：<s:property value="student.studentNo"/>
      </li>
      <li>
        本科学分绩：<s:property value="student.studentNo"/>
      </li>
      <li>
        研究生入学考试成绩：<s:property value="student.neepScore"/>
      </li>
      <li>
        获得奖项：<s:property value="student.awardsCollection"/>
      </li>
      <li>
        邮件地址：<s:property value="student.emailAddress"/>
      </li>
      <li>
        工作领域：<s:property value="student.workingAreas"/>
      </li>
      <li>
        联系电话: <s:property value="student.mobileNo"/>
      </li>
    </div>
  </s:if>
  <s:elseif test="isProfessor">
    <li>
      用户名：<s:property value="username"/>
    </li>
    <li>
      工作单位：<s:property value="professor.employerUnit"/>
    </li>
    <li>
      证件号码：<s:property value="professor.identityCardNo"/>
    </li>
    <li>
      工作领域：<s:property value="professor.workingArea"/>
    </li>
    <li>
      发表文章：<s:property value="professor.papersPublished"/>
    </li>
    <li>
      招生名额: <s:property value="professor.accomodationNumber"/>
    </li>
    <li>
      邮件地址：<s:property value="professor.emailAddress"/>
    </li>
    <li>
      联系电话: <s:property value="professor.mobileNo"/>
    </li>
  </s:elseif>
</body>
</html>
