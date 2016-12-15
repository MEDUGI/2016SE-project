<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/12/14
  Time: 0:26
  To change this template use File | Settings | File Templates.
--%>
<!-- Fixed navbar -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navbar navbar-default navbar-fixed-top navbar-transparent-black mm-fixed-top" role="navigation" id="navbar">



    <!-- Branding -->
    <div class="navbar-header col-md-2">
        <a class="navbar-brand" href="index.jsp">
            研究生导师互选推荐系统
        </a>
        <div class="sidebar-collapse">
            <a href="#">
                <i class="fa fa-bars"></i>
            </a>
        </div>
    </div>
    <!-- Branding end -->


    <!-- .nav-collapse -->
    <div class="navbar-collapse">

        <!-- Page refresh -->
        <ul class="nav navbar-nav refresh">
            <li class="divided">
                <a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
            </li>
        </ul>
        <!-- /Page refresh -->

        <!-- Search -->
        <div class="search" id="main-search">
            <i class="fa fa-search"></i> <input type="text" placeholder="搜索...">
        </div>
        <!-- Search end -->

        <!-- Quick Actions -->
        <ul class="nav navbar-nav quick-actions">
            <s:if test="#session['username']!=null">
            <li class="dropdown divided">

                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope"></i>
                    <span class="label label-transparent-black"><s:property value="messageNumber" /></span>
                </a>

                <ul class="dropdown-menu wider arrow nopadding messages">
                    <li><h1>你有 <strong><s:property value="messageNumber"/></strong> 条新消息</h1></li>
                    <s:iterator value="messages" status="st" id="msg">
                        <li>
                            <a class="cyan" href="#">
                                <div class="profile-photo">
                                    <img src="<s:property value="msg.imgURL"/>" alt />
                                </div>
                                <div class="message-info">
                                    <span class="sender"><s:property value="msg.userFrom" /></span>
                                    <span class="time"><s:property value="msg.date" /></span>
                                    <div class="message-content"><s:property value="msg.content" /></div>
                                </div>
                            </a>
                        </li>
                    </s:iterator>
                    <li class="topborder"><a href="showMessages.action">查看所有信息 <i class="fa fa-angle-right"></i></a></li>
                </ul>

            </li>

            <li class="dropdown divided">

                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell"></i>
                    <span class="label label-transparent-black"><s:property value="ApplicationNumber" /></span>

                </a>

                <ul class="dropdown-menu wide arrow nopadding bordered">
                    <li><h1> 你有 <strong><s:property value="ApplicationNumber"/></strong> 条新的申请动态</h1></li>
                    <s:iterator value="applications" status="st" id="app">
                        <li>
                            <a href="#">
                                <span class="label label-green"><i class="fa fa-user"></i></span>
                                发送给<s:property value="app.to" /> 的请求已经
                                    <s:if test="app.status==0">
                                        被拒绝
                                    </s:if>
                                    <s:elseif test="app.status==1">
                                        进入审核流程
                                    </s:elseif>
                                    <s:else>
                                        通过
                                    </s:else>
                                <span class="small"><s:property value="app.applydate" /></span>
                            </a>
                        </li>
                    </s:iterator>

                    <li><a href="showApplications.action">查看所有的申请动态 <i class="fa fa-angle-right"></i></a></li>
                </ul>

            </li>

            <li class="dropdown divided user" id="current-user">
                <div class="profile-photo">
                    <img src="<s:property value="#session.userImg" />" alt />
                </div>
                <a class="dropdown-toggle options" data-toggle="dropdown" href="mainpage.action">
    <s:property value="#session.username" /> <i class="fa fa-caret-down"></i>
                </a>

                <ul class="dropdown-menu arrow settings">

                    <li>

                        <h3>背景样式：</h3>
                        <ul id="color-schemes">
                            <li><a href="#" class="bg-1"></a></li>
                            <li><a href="#" class="bg-2"></a></li>
                            <li><a href="#" class="bg-3"></a></li>
                            <li><a href="#" class="bg-4"></a></li>
                            <li><a href="#" class="bg-5"></a></li>
                            <li><a href="#" class="bg-6"></a></li>
                        </ul>

                        <div class="form-group videobg-check">
                            <label class="col-xs-8 control-label">Video BG</label>
                            <div class="col-xs-4 control-label">
                                <div class="onoffswitch greensea small">
                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="videobg-check">
                                    <label class="onoffswitch-label" for="videobg-check">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </div>
                        </div>

                    </li>

                    <li class="divider"></li>

                    <li>
                        <a href="mainpage.action"><i class="fa fa-user"></i> 主页信息</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-envelope"></i> 消息盒子 <span class="badge badge-red" id="user-inbox"><s:property value="messageNumber" /></span></a>
                    </li>

                    <li class="divider"></li>

                    <li>
                        <a href="logout.action"><i class="fa fa-power-off"></i> 登出</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-comments"></i></a>
            </li>
            </s:if>
            <s:else>
                <li class="dropdown divided">
                    <a>您好，游客，请</a>
                </li>
                <li class="dropdown divided">
                    <a href="login.jsp">登录</a>
                </li>
                <li class="dropdown divided">
                    <a>或者</a>
                </li>
                <li class="dropdown divided">
                    <a href="register_stu.jsp">学生注册</a>
                </li>
                <li class="dropdown divided">
                    <a href="register_teacher.jsp">导师注册</a>
                </li>
            </s:else>
        </ul>
        <!-- /Quick Actions -->



        <!-- Sidebar -->
        <ul class="nav navbar-nav side-nav" id="sidebar">

            <li class="collapsed-content">
                <ul>
                    <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
            </li>

            <li class="navigation" id="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">导航栏 <i class="fa fa-angle-up"></i></a>
                <s:if test="#session['username']!=null">
                <!-- 登录后结果 -->
                <ul class="menu">

                    <li class="active">
                        <a href="indexAction.action">
                            <i class="fa fa-tachometer"></i> 个人主页
                            <span class="badge badge-red"><s:property value="messageNumber" /></span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-list"></i> 查看信息 <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="showChangePage.action">
                                    <i class="fa fa-caret-right"></i> 修改个人信息
                                </a>
                            </li>
                            <li>
                                <a href="create_resume.action">
                                    <i class="fa fa-caret-right"></i> 个人信息导出
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-pencil"></i> 信件管理
                            <span class="label label-greensea">mails</span>
                            <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="indexAction.action">
                                    <i class="fa fa-caret-right"></i> 发送信息
                                </a>
                            </li>
                            <li>
                                <a href="showMessages.action">
                                    <i class="fa fa-caret-right"></i> 查看信箱
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="recommand.action">
                            <i class="fa fa-tint"></i> 查看推荐对象
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-th-large"></i> 管理申请 <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="showApplications.action">
                                    <i class="fa fa-caret-right"></i> 查看申请状态
                                </a>
                            </li>
                            <li>
                                <a href="showApplications.action">
                                    <i class="fa fa-caret-right"></i> 处理申请
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="logout.action">
                            <i class="fa fa-desktop"></i> 登出
                        </a>
                    </li>


                </ul>
                </s:if>
                <s:else>
                    <ul class="menu">

                        <li>
                            <a href="login.jsp">
                                <i class="fa fa-key"></i> 登录
                            </a>
                        </li>


                    </ul>
                </s:else>
            </li>


        </ul>
        <!-- Sidebar end -->





    </div>
    <!--/.nav-collapse -->





</div>
<!-- Fixed navbar end -->