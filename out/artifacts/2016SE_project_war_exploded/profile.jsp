<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/12/14
  Time: 8:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- col 6 动态 -->
<div class="col-md-6">


    <!-- tile -->
    <section class="tile transparent recent-activity">




        <!-- tile header -->
        <div class="tile-header transparent">
            <h1><strong>最新</strong> 动态</h1>
            <div class="controls">
                <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                <a href="#" class="remove"><i class="fa fa-times"></i></a>
            </div>
        </div>
        <!-- /tile header -->



        <!-- tile widget -->
        <div class="tile-widget color transparent-black rounded-top-corners nopadding">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs tabdrop">
                <li class="active"><a href="#users-tab" data-toggle="tab">用户动态</a></li>
                <li><a href="#applications-tab" data-toggle="tab">申请动态</a></li>
                <li><a href="#messages-tab" data-toggle="tab">收件箱</a></li>
            </ul>
            <!-- / Nav tabs -->
        </div>
        <!-- /tile widget -->




        <!-- tile body -->
        <div class="tile-body tab-content nopadding rounded-bottom-corners">
            <!-- Tab panes -->

            <ul id="users-tab" class="tab-pane fade in active">
                <li>
                    <span class="user font-slab"><strong>姓名</strong></span>
                    <span class="subject"><s:property  value="fullname" /></span>
                </li>
                <li>
                    <span class="user font-slab"><strong>个人简介</strong></span>
                    <span class="subject"><s:property  value="introduction" /></span>
                </li>
                <s:if test='userstyle == "Professor"'>
                    <li>
                        <span class="user font-slab"><strong>工作单位</strong></span>
                        <span class="subject"><s:property value="employerUnit" /></span>
                    </li>
                    <li>
                        <span class="user font-slab"><strong>科研方向</strong></span>
                        <span class="subject"><s:property value="workingArea" /></span>
                    </li>
                    <li>
                        <span class="user font-slab"><strong>出版文献</strong></span>
                        <span class="subject"><s:property value="papersPublished" /></span>
                    </li>
                </s:if>
                <s:elseif test='userstyle == "Student"'>
                    <li>
                        <span class="user font-slab"><strong>毕业院校</strong></span>
                        <span class="subject"><s:property value="graduateSchool" /></span>
                    </li>
                    <li>
                        <span class="user font-slab"><strong>原专业方向</strong></span>
                        <span class="subject"><s:property value="workingAreas" /></span>
                    </li>
                    <li>
                        <span class="user font-slab"><strong>准备攻读方向</strong></span>
                        <span class="subject"><s:property value="futureMajor1" />  <s:property value="futureMajor2"/> </span>
                    </li>
                    <li>
                        <span class="user font-slab"><strong>获奖及荣誉</strong></span>
                        <span class="subject"><s:property value="awardsCollection" /></span>
                    </li>
                    <li>
                        <span class="user font-slab"><strong>在校期间GPA</strong></span>
                        <span class="subject"><s:property value="gpa" /></span>
                    </li>
                    <li>
                        <span class="user font-slab"><strong>研究生入学考试分数</strong></span>
                        <span class="subject"><s:property value="neepScore" /></span>
                    </li>
                </s:elseif>
                <li>
                    <span class="user font-slab"><strong>联系电话</strong></span>
                    <span class="subject"><s:property value="mobileNo" /></span>
                </li>
                <li>
                    <span class="user font-slab"><strong>E-mail</strong></span>
                    <span class="subject"><s:property value="emailAddress" /></span>
                </li>
                <li>
                    <span class="user font-slab"><strong>联系地址</strong></span>
                    <span class="subject"><s:property value="physicalAddress" /></span>
                </li>

            </ul>

            <ul id="applications-tab" class="tab-pane fade">
                <s:iterator value="applications" status="st" id="app">
                    <li>
                        <span class="user font-slab">发送给 <strong><s:property value="app.to" /></strong></span>
                        <span class="subject"><strong><s:if test="app.status==0">
                            被拒绝
                        </s:if>
                                            <s:elseif test="app.status==1">
                                                进入审核流程
                                            </s:elseif>
                                            <s:else>
                                                通过
                                            </s:else></strong></span>
                        <span class="time"><i class="fa fa-clock-o"></i><s:property value="app.applydate" /></span>
                    </li>
                </s:iterator>
            </ul>

            <ul id="messages-tab" class="tab-pane fade">
                <s:iterator value="messages" status="st" id="msg">
                    <li>
                        <img src="<s:property value="msg.imgURL"/>" class="w35" alt>
                        <span class="user font-slab"><strong><s:property value="msg.userFrom" /></strong></span>
                        <span class="subject"><strong><s:property value="msg.title" /></strong></span>
                        <span class="time"><i class="fa fa-clock-o"></i> <s:property value="msg.date" /></span>
                    </li>
                </s:iterator>
            </ul>
            <!-- / Tab panes -->
        </div>
        <!-- /tile body -->



    </section>
    <!-- /tile -->


</div>
<!-- /col 6 -->