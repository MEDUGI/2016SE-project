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
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/jquery.min.js"></script>
  <link rel='stylesheet' href='css/jquery-ui.css'>
  <link rel='stylesheet prefetch' href='css/bootstrap.min.css'>

  <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

  <script src="js/modernizr.js"></script>

  <script>
      var mainaward = "";

      function add_award () {
          var mail = $("#mailAddress").prev();
          mainaward += mail.find("input").val() + ";";
          alert(mainaward);
          mail.after("<div class=\"form-group\"> <div class= \"input-group\"> <div class=\"input-group-addon\" id=\"tips\">获奖情况</div> <input class=\"form-control\" type=\"text\" value=\"\"> <a href=\"javascript:;add_award()\">添加新奖项</a><br> </div> </div>");
      }

      function sum_sumbit() {
          $("#mainaward").val = mainaward;
          $("#form-login-2").submit();
      }
  </script>

</head>
<body class="login-page">
  <%@include file="head.jsp"%>
  <div class="login-content">
    <div class="login-form">
      <s:if test="#session.userstyle=='Student'">
        <form action="changeInformation.action" role="form" id="form-login" method="post">
          <div class="form-group">
              <div class="input-group">
                  <span class="input-group-addon" id="tips">毕业院校</span>
                  <input class="form-control" name="graduateSchool" type="text" value="<s:property value='graduateSchool'/> ">
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">姓名</div>
                  <input class="form-control" name="fullname" type="text" value="<s:property value='fullname'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">学号</div>
                  <input class="form-control" name="studentNo" type="text" value="<s:property value='studentNo'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">学分绩</div>
                  <input class="form-control" name="gpa" type="text" value="<s:property value='gpa'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">考研成绩</div>
                  <input class="form-control" name="neepScore" type="text" value="<s:property value='neepScore'/>"><br>
              </div>
          </div>

          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">获奖情况</div>
                  <input id = "mainaward" class="form-control" name="awardsCollection" type="text" value="<s:property value='awardsCollection'/>">
                  <a href="javascript:;add_award()">添加新奖项</a><br>
              </div>
          </div>


          <div class="form-group" id="mailAddress">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">邮件地址</div>
                  <input class="form-control" name="emailAddress" type="text" value="<s:property value='emailAddress'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">兴趣领域</div>
                  <input class="form-control" name="workingAreas" type="text" value="<s:property value='workingAreas'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">联系电话</div>
                  <input class="form-control" name="mobileNo" type="text" value="<s:property value='mobileNo'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">专业</div>
                  <input class="form-control" name="major" type="text" value="<s:property value='major'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">个人简介</div>
                  <input class="form-control" name="introduction" type="text" value="<s:property value='introduction'/>"><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">通讯地址</div>
                  <input class="form-control" name="physicalAddress" type="text" value="<s:property value='physicalAddress'/>"><br>
              </div>
          </div>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon" id="tips">研究生专业1</div>
                    <input class="form-control" name="futureMajor1" type="text" value="<s:property value='futureMajor1'/>"><br>
                </div>
            </div>
            <div class="form-group">
                <div class="input-group">
                    <div class="input-group-addon" id="tips">研究生专业2</div>
                    <input class="form-control" name="futureMajor2" type="text" value="<s:property value='futureMajor2'/>"><br>
                </div>
            </div>
          <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block btn-login">
                  <i class="icon-signin"></i>
                  修改信息
              </button>
          </div>
        </form>
      </s:if>
      <s:if test="#session.userstyle=='Professor'">
          <form action="changeInformation.action" role="form" id="form-login-2" method="post">
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">工作单位</div>
                      <input class="form-control" name="employerUnit" type="text" value="<s:property value='employerUnit'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">姓名</div>
                      <input class="form-control" name="fullname" type="text" value="<s:property value='fullname'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">证件号码</div>
                      <input class="form-control" name="identityCardNo" type="text" value="<s:property value='identityCardNo'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">工作领域</div>
                      <input class="form-control" name="workingArea" type="text" value="<s:property value='workingArea'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">发表文章</div>
                      <input class="form-control" name="papersPublished" type="text" value="<s:property value='papersPublished'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">研究生接受名额</div>
                      <input class="form-control" name="accomodationNumber" type="text" value="<s:property value='accomodationNumber'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">邮件地址</div>
                      <input class="form-control" name="emailAddress" type="text" value="<s:property value='emailAddress'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">联系电话</div>
                      <input class="form-control" name="mobileNo" type="text" value="<s:property value='mobileNo'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">专业</div>
                      <input class="form-control" name="major" type="text" value="<s:property value='major'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">简介</div>
                      <input class="form-control" name="introduction" type="text" value="<s:property value='introduction'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <div class="input-group">
                      <div class="input-group-addon" id="tips">通讯地址</div>
                      <input class="form-control" name="physicalAddress" type="text" value="<s:property value='physicalAddress'/>"><br>
                  </div>
              </div>
              <div class="form-group">
                  <button type="button" onclick="sum_sumbit()" class="btn btn-primary btn-block btn-login">
                      <i class="icon-signin"></i>
                      修改信息
                  </button>
              </div>
          </form>
      </s:if>
    </div>
  </div>
</body>
</html>
