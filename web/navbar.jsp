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

            <li class="dropdown divided">

                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope"></i>
                    <span class="label label-transparent-black"><s:property value="messageNumber"></span>
                </a>

                <ul class="dropdown-menu wider arrow nopadding messages">
                    <li><h1>You have <strong><s:property value="messageNumber"/></strong> new message</h1></li>
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
                    <li class="topborder"><a href="showMessages.action">Check all messages <i class="fa fa-angle-right"></i></a></li>
                </ul>

            </li>

            <li class="dropdown divided">

                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell"></i>
                    <span class="label label-transparent-black">3</span>
                </a>

                <ul class="dropdown-menu wide arrow nopadding bordered">
                    <li><h1>You have <strong>3</strong> new notifications</h1></li>

                    <li>
                        <a href="#">
                            <span class="label label-green"><i class="fa fa-user"></i></span>
                            New user registered.
                            <span class="small">18 mins</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span class="label label-red"><i class="fa fa-power-off"></i></span>
                            Server down.
                            <span class="small">27 mins</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span class="label label-orange"><i class="fa fa-plus"></i></span>
                            New order.
                            <span class="small">36 mins</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span class="label label-cyan"><i class="fa fa-power-off"></i></span>
                            Server restared.
                            <span class="small">45 mins</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <span class="label label-amethyst"><i class="fa fa-power-off"></i></span>
                            Server started.
                            <span class="small">50 mins</span>
                        </a>
                    </li>

                    <li><a href="#">Check all notifications <i class="fa fa-angle-right"></i></a></li>
                </ul>

            </li>

            <li class="dropdown divided user" id="current-user">
                <div class="profile-photo">
                    <img src="assets/images/profile-photo.jpg" alt />
                </div>
                <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                    John Douey <i class="fa fa-caret-down"></i>
                </a>

                <ul class="dropdown-menu arrow settings">

                    <li>

                        <h3>Backgrounds:</h3>
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
                        <a href="#"><i class="fa fa-user"></i> Profile</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-red" id="user-inbox">3</span></a>
                    </li>

                    <li class="divider"></li>

                    <li>
                        <a href="#"><i class="fa fa-power-off"></i> Logout</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#mmenu"><i class="fa fa-comments"></i></a>
            </li>
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
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>

                <ul class="menu">

                    <li class="active">
                        <a href="index.jsp">
                            <i class="fa fa-tachometer"></i> Dashboard
                            <span class="badge badge-red">1</span>
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-list"></i> Forms <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="form-elements.html">
                                    <i class="fa fa-caret-right"></i> Common Elements
                                </a>
                            </li>
                            <li>
                                <a href="validation-elements.html">
                                    <i class="fa fa-caret-right"></i> Validation
                                </a>
                            </li>
                            <li>
                                <a href="form-wizard.html">
                                    <i class="fa fa-caret-right"></i> Form Wizard
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-pencil"></i> Interface <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="ui-elements.html">
                                    <i class="fa fa-caret-right"></i> UI Elements
                                </a>
                            </li>
                            <li>
                                <a href="typography.html">
                                    <i class="fa fa-caret-right"></i> Typography
                                </a>
                            </li>
                            <li>
                                <a href="tiles.html">
                                    <i class="fa fa-caret-right"></i> Tiles
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="buttons.html">
                            <i class="fa fa-tint"></i> Buttons & Icons
                        </a>
                    </li>
                    <li>
                        <a href="grid.html">
                            <i class="fa fa-th"></i> Grid Layout
                        </a>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-th-large"></i> Tables <b class="fa fa-plus dropdown-plus"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="tables.html">
                                    <i class="fa fa-caret-right"></i> Bootstrap Tables
                                </a>
                            </li>
                            <li>
                                <a href="datatables.html">
                                    <i class="fa fa-caret-right"></i> DataTables
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-desktop"></i> Example Pages <b class="fa fa-plus dropdown-plus"></b>
                            <span class="label label-greensea">mails</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="login.html">
                                    <i class="fa fa-caret-right"></i> Login Page
                                </a>
                            </li>
                            <li>
                                <a href="calendar.html">
                                    <i class="fa fa-caret-right"></i> Calendar
                                </a>
                            </li>
                            <li>
                                <a href="page404.html">
                                    <i class="fa fa-caret-right"></i> Page 404
                                </a>
                            </li>
                            <li>
                                <a href="page500.html">
                                    <i class="fa fa-caret-right"></i> Page 500
                                </a>
                            </li>
                            <li>
                                <a href="page-offline.html">
                                    <i class="fa fa-caret-right"></i> Page Offline
                                </a>
                            </li>
                            <li>
                                <a href="gallery.html">
                                    <i class="fa fa-caret-right"></i> Gallery
                                </a>
                            </li>
                            <li>
                                <a href="timeline.html">
                                    <i class="fa fa-caret-right"></i> Timeline
                                </a>
                            </li>
                            <li>
                                <a href="mail.html">
                                    <i class="fa fa-caret-right"></i> Vertical Mail
                                    <span class="badge badge-red">5</span>
                                </a>
                            </li>
                            <li>
                                <a href="mail-horizontal.html">
                                    <i class="fa fa-caret-right"></i> Horizontal Mail
                                    <span class="label label-greensea">mails</span>
                                </a>
                            </li>
                            <li>
                                <a href="vector-maps.html">
                                    <i class="fa fa-caret-right"></i> Vector Maps
                                </a>
                            </li>
                            <li>
                                <a href="google-maps.html">
                                    <i class="fa fa-caret-right"></i> Google Maps
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="widgets.html">
                            <i class="fa fa-play-circle"></i> Widgets
                        </a>
                    </li>

                    <li>
                        <a href="charts.html">
                            <i class="fa fa-bar-chart-o"></i> Charts & Graphs
                        </a>
                    </li>


                </ul>

            </li>

            <li class="summary" id="order-summary">
                <a href="#" class="sidebar-toggle underline" data-toggle="#order-summary">Orders Summary <i class="fa fa-angle-up"></i></a>

                <div class="media">
                    <a class="pull-right" href="#">
                        <span id="sales-chart"></span>
                    </a>
                    <div class="media-body">
                        This week sales
                        <h3 class="media-heading">26, 149</h3>
                    </div>
                </div>

                <div class="media">
                    <a class="pull-right" href="#">
                        <span id="balance-chart"></span>
                    </a>
                    <div class="media-body">
                        This week balance
                        <h3 class="media-heading">318, 651</h3>
                    </div>
                </div>

            </li>

            <li class="settings" id="general-settings">
                <a href="#" class="sidebar-toggle underline" data-toggle="#general-settings">General Settings <i class="fa fa-angle-up"></i></a>

                <div class="form-group">
                    <label class="col-xs-8 control-label">Switch ON</label>
                    <div class="col-xs-4 control-label">
                        <div class="onoffswitch greensea">
                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="switch-on" checked="">
                            <label class="onoffswitch-label" for="switch-on">
                                <span class="onoffswitch-inner"></span>
                                <span class="onoffswitch-switch"></span>
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-8 control-label">Switch OFF</label>
                    <div class="col-xs-4 control-label">
                        <div class="onoffswitch greensea">
                            <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="switch-off">
                            <label class="onoffswitch-label" for="switch-off">
                                <span class="onoffswitch-inner"></span>
                                <span class="onoffswitch-switch"></span>
                            </label>
                        </div>
                    </div>
                </div>

            </li>


        </ul>
        <!-- Sidebar end -->





    </div>
    <!--/.nav-collapse -->





</div>
<!-- Fixed navbar end -->
