<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/11/18
  Time: 3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>呃唔，出错了。。。</title>
    <style>@-moz-keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}@-webkit-keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}@-o-keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}@keyframes nodeInserted{from{opacity:0.99;}to{opacity:1;}}embed,object{animation-duration:.001s;-ms-animation-duration:.001s;-moz-animation-duration:.001s;-webkit-animation-duration:.001s;-o-animation-duration:.001s;animation-name:nodeInserted;-ms-animation-name:nodeInserted;-moz-animation-name:nodeInserted;-webkit-animation-name:nodeInserted;-o-animation-name:nodeInserted;}</style>
</head>
<table width="630" border="0" align="center" cellpadding="0" cellspacing="0">
    <tbody><tr>
    </tr>
    <tr>
        <td height="60" bgcolor="#FFFFFF"><table border="0" align="center" cellpadding="0" cellspacing="0">
            <tbody><tr>
                <td width="230"><a href="#"><img src="http://bbs.moonseo.cn/404.jpg" style="border:0;"></a></td>
                <td width="400" align="center" style="color:#333333; font-size:16px; font-weight:bold;"><p><s:property value="errorMessage"/></p>
                    <button onclick="windows.location.href('index.action')">
                        回到登录界面
                    </button></td>

            </tr>
            </tbody></table></td>
    </tr>
    </tbody></table>
</body>
</html>