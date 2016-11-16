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
        </tr>

        <s:iterator value="result" status="st">

            <td><s:property value="studentNo"/></td>
            <td><s:property value='username'/></td>
            <td><s:property value='graduateSchool'/></td>
            <td><s:property value='awardsCollection'/></td>
            <td><s:property value='gpa'/></td>
            <td><s:property value='neepScore'/></td>
            <td><a href="updateBook.action?bookId=<s:property value="username" />">联系方式</a></td>
            <td><a href="deleteBook.action?bookId=<s:property value="username"/>">详细信息</a> </td>
            </tr>
        </s:iterator>
    </s:if>
    <s:else>
        <tr>
            <td>学生信息</td>
            <td>申请时间</td>
            <td>申请内容</td>
            <td>申请状态</td>
            <td>导师回复</td>
        </tr>

        <s:iterator value="result" status="st">

            <td><s:property value="ISBN"/></td>
            <td><s:property value='Title'/></td>
            <td><s:property value='AuthorID'/></td>
            <td><s:property value='Publisher'/></td>
            <td><s:property value='PublishDate'/></td>
            <td><s:property value='Price'/></td>
            <td><a href="updateBook.action?bookId=<s:property value="ISBN" />">修改</a></td>
            <td><a href="deleteBook.action?bookId=<s:property value="ISBN"/>">删除</a> </td>
            </tr>
        </s:iterator>
    </s:else>

</table>
</body>
</html>
