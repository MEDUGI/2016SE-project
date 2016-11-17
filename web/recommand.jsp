<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/11/16
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <title>推荐清单</title>
</head>
<body>

<table border="1">
    <s:if test="userstyle == 'Professor'">
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>毕业院校</td>
            <td>获奖历史</td>
            <td>GPA</td>
            <td>NEEP分数</td>
            <td>联系方式</td>
            <td>查看</td>

        </tr>

        <s:iterator value="result" status="st">

            <td><s:property value="studentNo"/></td>
            <td><s:property value='fullname'/></td>
            <td><s:property value='graduateSchool'/></td>
            <td><s:property value='awardsCollection'/></td>
            <td><s:property value='gpa'/></td>
            <td><s:property value='neepScore'/></td>
            <td><s:property value="mobileNo" /></td>
            <td><a href="mainpage.action?watchedUserName=<s:property value="username"/>">详细信息</a> </td>
            <td><a href='editApplicatin.action?userTo=<s:property value="username"/>&userStyle=Student' >发出申请</a></td>
            </tr>
        </s:iterator>
    </s:if>
    <s:else>
        <tr>
            <td>导师名称</td>
            <td>工作单位</td>
            <td>研究领域</td>
            <td>电子邮件</td>
            <td>电话</td>
            <td>名额情况</td>
            <td>查看</td>
        </tr>

        <s:iterator value="result" status="st">

            <td><s:property value="fullname"/></td>
            <td><s:property value='employerUnit'/></td>
            <td><s:property value='workingArea'/></td>
            <td><s:property value='emailAddress'/></td>
            <td><s:property value='mobileNo'/></td>
            <td><s:property value='acceptedNumber'/>/<s:property value="accomodationNumber" /></td>
            <td><a href="mainpage.action?watchedUserName=<s:property value="username"/>">详细信息</a></td>
            <td><a href="editApplicatin.action?userTo=<s:property value="username"/>&userStyle=Professor">发出申请</a> </td>
            </tr>
        </s:iterator>
    </s:else>

</table>
</body>
</html>
