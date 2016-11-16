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
  <s:head theme="ajax"/>
</head>
<body>
  <s:if test="isStudent">
    <div>
      <li>
        用户名：<s:property value="username"/>
      </li>
      <li>
        <s:url id="showGraduateSchoolURL" value="showGradSchool.action">
        <s:param name="username"><s:property value="username"/></s:param>
      </s:url>
        <s:div id="showGradSchoolDiv" theme="ajax" href="%{showGraduateSchoolURL}"/>
        <s:form id="gradSchoolForm" action="showGradSchool">
          <s:param name="username"><s:property value="username"/></s:param>
          <s:textfield name="graduateSchool"/>
          <s:submit type="button" theme="ajax" label="修改毕业学校" targets="showGradSchoolDiv"/>
        </s:form>
      </li>
      <li>

      </li>
      <li>

      </li>
    </div>
  </s:if>
  <s:elseif test="isProfessor">

  </s:elseif>
</body>
</html>
