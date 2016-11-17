<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/11/17
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改个人信息</title>
</head>
<body>
  <s:if test="#session.userstyle=='Student'">
    <form action="showChangePage.jsp" method="post">
      毕业院校<input name="graduateSchool" type="text" value="<s:property value='graduateSchool'/> "><br>
      学号<input name="studentNo" type="text" value="<s:property value='studentNo'/>"><br>
      学分绩<input name="gpa" type="text" value="<s:property value='gpa'/>"><br>
      考研成绩<input name="neepScore" type="text" value="<s:property value='neepScore'/>"><br>
      获得奖项<input name="awardsCollection" type="text" value="<s:property value='awardsCollection'/>"><br>
      邮件地址<input name="emailAddress" type="text" value="<s:property value='emailAddress'/>"><br>
      兴趣领域<input name="workingAreas" type="text" value="<s:property value='workingAreas'/>"><br>
      联系电话<input name="mobileNo" type="text" value="<s:property value='mobileNo'/>"><br>
      <input type="submit" value="修改信息">
    </form>
  </s:if>
</body>
</html>
