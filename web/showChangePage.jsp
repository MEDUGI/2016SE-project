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
  <link rel='stylesheet prefetch' href='css/bootstrap.min.css'>    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen-bootstrap.css">
  <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

  <script src="js/modernizr.js"></script>

  <script>
      var mainaward = "";

      function add_award () {
          if ($("#awards").find("input")[$("#awards").find("input").length - 1].value != "") {
              var last = $("#awards");
              mainaward += $("#awards").find("input")[$("#awards").find("input").length - 1].value + ";";
              last.append("<div class =  \"form-group col-md-2 col-sm-2\"> <button type = \"button\"  class = \"form-control btn-primary btn-group-sm\" onclick=\"add_award()\">+</button> </div>");
              last.append(" <div class =  \"form-group col-md-10 col-sm-10\"> <input  class=\"form-control\" type=\"text\" > <br> </div>");
          }
      }

      function sum_sumbit() {
          $("#mainaward").val = mainaward.substring(0,mainaward.length-1);
          $("#form-login-2").submit();
      }

      function select_major () {
          var major = $("#major").val();
          var domains = [[],["模式识别","云计算","数据安全","软件工程","修电脑"],["烧锅炉","电器"],["航空","航天"],["哲学","美术","音乐"]];
          var id = $("#domain");
          id.empty();
          id.chosen("destroy");
          for (var i = 0; i<domains[parseInt(major)].length; i++) {
              var item = domains[parseInt(major)][i];
              id.append("<option value = " + "\"" + item + "\">" + item + "</option>");
          }
          id.chosen({disable_search_threshold: 10});
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
                  <input class="form-control" name="gpa" type="text" value="<s:property value='gpa'/>" ><br>
              </div>
          </div>
          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">考研成绩</div>
                  <input class="form-control" name="neepScore" type="text" value="<s:property value='neepScore'/>"><br>
              </div>
          </div>

          <div class="form-group">
              <div class="input-group" id = "awards">
                  <div class="input-group-addon" id="tips">获奖情况</div>
                  <div class = "form-group col-md-2 col-sm-2">
                      <button type ="button"  class = "form-control btn-primary btn-group-sm" onclick="add_award()">+</button>
                   </div>
                  <div class =  "form-group col-md-10 col-sm-10">
                    <input id = "mainaward" class="form-control" name="awardsCollection" type="text" value="<s:property value='awardsCollection'/>">
                      <br>
                  </div>
              </div>
          </div>


          <div class="form-group">
              <div class="input-group">
                  <div class="input-group-addon" id="tips">邮件地址</div>
                  <input class="form-control" name="emailAddress" type="text" value="<s:property value='emailAddress'/>"><br>
              </div>
          </div>

            <div class="form-group">
                <div class="input-group col-lg-12">
                    <label for="major">专业</label>
                    <select name="major" id = "major" class="chosen-select form-control" onchange="select_major()">
                        <option value="0"> 未选择 </option>
                        <option value="1"> 计算机科学与技术 </option>
                        <option value="2"> 机电专业 </option>
                        <option value="3"> 航天专业 </option>
                        <option value="4"> 艺术学科 </option>
                    </select>
                   <!-- <input class="form-control" name="major" type="text" value="<s:property value='major'/>"><br> -->
                </div>
            </div>

          <div class="form-group">
              <div class="input-group col-lg-12">
                  <label for="domain"> 兴趣领域 </label>
                  <select name="workingAreas" data-placeholder="选择相关领域..." multiple="" tabindex="3" class="chosen-select form-control" id="domain">
                  </select>
                  <!--<input class="form-control" name="workingAreas" type="text" value="<s:property value='workingAreas'/>"><br>-->
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
                <div class="input-group col-lg-12">
                    <label for="major1">研究生专业1</label>
                    <select id = "major1" class="chosen-select form-control" name="futureMajor1" value="<s:property value='futureMajor1'/>">
                        <option value="0"> 未选择 </option>
                        <option value="1"> 计算机科学与技术 </option>
                        <option value="2"> 机电专业 </option>
                        <option value="3"> 航天专业 </option>
                        <option value="4"> 艺术学科 </option>
                    </select>
                    <!-- <input class="form-control" name="major" type="text" value="<s:property value='major'/>"><br> -->
                </div>
            </div>
            <div class="form-group">
                <div class="input-group col-lg-12">
                    <label for="major2">研究生专业2</label>
                    <select id = "major2" class="chosen-select form-control" name="futureMajor2" value="<s:property value='futureMajor2'/>">
                        <option value="0"> 未选择 </option>
                        <option value="1"> 计算机科学与技术 </option>
                        <option value="2"> 机电专业 </option>
                        <option value="3"> 航天专业 </option>
                        <option value="4"> 艺术学科 </option>
                    </select>
                    <!-- <input class="form-control" name="major" type="text" value="<s:property value='major'/>"><br> -->
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
  <script src="assets/js/vendor/chosen/chosen.jquery.min.js"></script>
<script>
    $(function() {
        $(".chosen-select").chosen({disable_search_threshold: 10});
    })
</script>
</body>
</html>
