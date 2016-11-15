<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/11/15
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发信</title>
</head>
<body>
    <table>
        <form action="sendMessage" method="post">
            <input name="userFrom" type="text" value=${cookie.client.username} hidden>
            <input name="userFromStyle" type="text" value=${cookie.client.userstyle} hidden>
            发向 <input name="userTo" type="text">
            <select name="userToStyle">
                <option value="Student"> 学生</option>
                <option value="Teacher"> 导师</option>
            </select><br>
            内容 <input name="content" type="text"> <br>
            <input type="submit" value="发送">
        </form>
    </table>
</body>
</html>
