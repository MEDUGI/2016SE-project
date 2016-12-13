<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Minimal 1.0 - Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/animate/animate.min.css">
    <link type="text/css" rel="stylesheet" media="all" href="assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link rel="stylesheet" href="assets/js/vendor/rickshaw/css/rickshaw.min.css">
    <link rel="stylesheet" href="assets/js/vendor/morris/css/morris.css">
    <link rel="stylesheet" href="assets/js/vendor/tabdrop/css/tabdrop.css">
    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote.css">
    <link rel="stylesheet" href="assets/js/vendor/summernote/css/summernote-bs3.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="assets/js/vendor/chosen/css/chosen-bootstrap.css">

    <link href="assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-1">

 

    <!-- Preloader -->
    <div class="mask"><div id="loader"></div></div>
    <!--/Preloader -->

    <!-- Wrap all page content here -->
    <div id="wrap">

      


      <!-- Make page fluid -->
      <div class="row">
        




        <!-- Fixed navbar -->
        <%@ include file="navbar.jsp" %>
        <!-- Fixed navbar end -->
        




        
        <!-- Page content -->
        <div id="content" class="col-md-12">
          








          <!-- page header -->
          <div class="pageheader">
            

            <h2><i class="fa fa-tachometer"></i> 个人主页</h2>


          </div>
          <!-- /page header -->
          
          




          <!-- content main container -->
          <div class="main">
            
            


            <!-- row -->
            <div class="row">

                <!-- col 6 动态 -->
                <div class="col-md-6">


                    <!-- tile -->
                    <section class="tile transparent recent-activity">




                        <!-- tile header -->
                        <div class="tile-header transparent">
                            <h1><strong>Recent</strong> Activity</h1>
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
                                <li class="active"><a href="#users-tab" data-toggle="tab">Users</a></li>
                                <li><a href="#orders-tab" data-toggle="tab">Orders</a></li>
                                <li><a href="#messages-tab" data-toggle="tab">Messages</a></li>
                                <li><a href="#tasks-tab" data-toggle="tab">Tasks</a></li>
                                <li><a href="#comments-tab" data-toggle="tab">Comments</a></li>
                            </ul>
                            <!-- / Nav tabs -->
                        </div>
                        <!-- /tile widget -->




                        <!-- tile body -->
                        <div class="tile-body tab-content nopadding rounded-bottom-corners">
                            <!-- Tab panes -->

                            <ul id="users-tab" class="tab-pane fade in active">
                                <li>
                                    <img src="assets/images/peter-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Peter <strong>Kay</strong></span>
                                    <span class="subject">has been <strong>unbanned</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 15 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Arnold <strong>Karlsberg</strong></span>
                                    <span class="subject">has been <strong>unbanned</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 1 hour ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Arnold <strong>Karlsberg</strong></span>
                                    <span class="subject">has been <strong>banned</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 2 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/ici-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Ing. Imrich <strong>Kamarel</strong></span>
                                    <span class="subject">has been <strong>updated</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 4 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Arnold <strong>Karlsberg</strong></span>
                                    <span class="subject">has been <strong>registered</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 8 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/peter-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Peter <strong>Kay</strong></span>
                                    <span class="subject">has been <strong>banned</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 12 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/peter-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Peter <strong>Kay</strong></span>
                                    <span class="subject">has been <strong>registered</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> yesterday</span>
                                </li>
                            </ul>

                            <ul id="orders-tab" class="tab-pane fade">
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Arnold <strong>Karlsberg</strong></span>
                                    <span class="subject">send new order <strong>OR_00012014</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 15 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/george-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">George <strong>McCain</strong></span>
                                    <span class="subject">change order <strong>OR_02172013</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 27 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/george-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">George <strong>McCain</strong></span>
                                    <span class="subject">send new order <strong>OR_02172013</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 35 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/peter-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Peter <strong>Kay</strong></span>
                                    <span class="subject">cancelled order <strong>OR_02162013</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 2 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/peter-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Peter <strong>Kay</strong></span>
                                    <span class="subject">send new order <strong>OR_02162013</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 3 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/ici-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Ing. Imrich <strong>Kamarel</strong></span>
                                    <span class="subject">send new order <strong>OR_02152013</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 5 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/ici-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Ing. Imrich <strong>Kamarel</strong></span>
                                    <span class="subject">send new order <strong>OR_02142013</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 5 hours ago</span>
                                </li>
                            </ul>

                            <ul id="messages-tab" class="tab-pane fade">
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">received new message from <strong>Peter Kay</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 15 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">received new message from <strong>Peter Kay</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 30 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">received new message from <strong>Ing. Imrich Kamarel</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 35 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">received new message from <strong>Arnold Arnold</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 42 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">received new message from <strong>George McCain</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 1 hour ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">received new message from <strong>Ing. Imrich Kamarel</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 1 hour ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">received new message from <strong>Ing. Imrich Kamarel</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 1 hour ago</span>
                                </li>
                            </ul>

                            <ul id="tasks-tab" class="tab-pane fade">
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">cancelled task <strong>Get drunk</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 15 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">finished task <strong>Gifts!</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 59 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">finished task <strong>Make backup</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 3 hours ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">have a new task <strong>Gifts!</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> yesterday</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">finished task <strong>Send emails</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> yesterday</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">have a new task <strong>Send emails</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> yesterday</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab"><strong>You</strong></span>
                                    <span class="subject">have a new task <strong>Make backup</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> yesterday</span>
                                </li>
                            </ul>

                            <ul id="comments-tab" class="tab-pane fade">
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Arnold <strong>Karlsberg</strong></span>
                                    <span class="subject">deleted comment <strong>CM_00019</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 5 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Arnold <strong>Karlsberg</strong></span>
                                    <span class="subject">posted a new comment <strong>CM_00019</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 8 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab">John <strong>Douey</strong></span>
                                    <span class="subject">posted a new comment <strong>CM_00018</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 9 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/peter-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Peter <strong>Kay</strong></span>
                                    <span class="subject">posted a new comment <strong>CM_00017</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 18 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Ing. Imrich <strong>Kamarel</strong></span>
                                    <span class="subject">updated comment <strong>CM_00016</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 25 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/arnold-avatar.jpg" class="w35" alt>
                                    <span class="user font-slab">Ing. Imrich <strong>Kamarel</strong></span>
                                    <span class="subject">posted a new comment <strong>CM_00016</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 42 minutes ago</span>
                                </li>
                                <li>
                                    <img src="assets/images/profile-photo.jpg" class="w35" alt>
                                    <span class="user font-slab">John <strong>Douey</strong></span>
                                    <span class="subject">posted a new comment <strong>CM_00015</strong></span>
                                    <span class="time"><i class="fa fa-clock-o"></i> 56 minutes ago</span>
                                </li>
                            </ul>

                            <!-- / Tab panes -->
                        </div>
                        <!-- /tile body -->



                    </section>
                    <!-- /tile -->


                </div>
                <!-- /col 6 -->

                <!-- col 6  发送信息 -->
                <div class="col-md-6">



                    <!-- tile -->
                    <section class="tile transparent">




                        <!-- tile header -->
                        <div class="tile-header transparent">
                            <h1><strong>Quick</strong> Message</h1>
                            <div class="controls">
                                <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                <a href="#" class="remove"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <!-- /tile header -->



                        <!-- tile widget -->
                        <div class="tile-widget color transparent-black rounded-top-corners">
                            <form class="form-horizontal" role="form">
                                <div class="form-group">
                                    <label for="message-to" class="col-sm-2 control-label font-slab">Recipients</label>
                                    <div class="col-sm-10">
                                        <select data-placeholder="Select recipients..." multiple="" tabindex="3" class="chosen-select form-control chosen-transparent" id="message-to">
                                            <option value="http://tattek.com/minimal/ici@gmail.com">ici@gmail.com</option>
                                            <option value="http://tattek.com/minimal/johny@gmail.com">johny@gmail.com</option>
                                            <option value="http://tattek.com/minimal/arnie@gmail.com">arnie@gmail.com</option>
                                            <option value="http://tattek.com/minimal/pete@gmail.com">pete@gmail.com</option>
                                            <option value="http://tattek.com/minimal/gorge@gmail.com">gorge@gmail.com</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group no-bottom-margin">
                                    <label for="subject" class="col-sm-2 control-label font-slab">Subject</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control transparent" id="subject" placeholder="Type subject here...">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- /tile widget -->



                        <!-- tile body -->
                        <div class="tile-body nopadding">
                            <div id="quick-message-content"></div>
                        </div>
                        <!-- /tile body -->


                        <!-- tile footer -->
                        <div class="tile-footer rounded-bottom-corners text-right">
                            <a class="submit font-slab" href="#"><strong>Send</strong> message <i class="fa fa-comment"></i></a>
                        </div>
                        <!-- /tile footer -->


                    </section>
                    <!-- /tile -->




                </div>
                <!-- /col 6 -->
              
              
            </div>
            <!-- /row -->


            <!-- row -->
            <div class="row">




                <!-- col 4 -->
                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">








                    <!-- tile  计划表 -->
                    <section class="tile transparent">




                        <!-- tile header -->
                        <div class="tile-header color redbrown rounded-top-corners text-center">
                            <button class="btn pull-left btn-black-transparent" type="button"><i class="fa fa-caret-square-o-down"></i></button>
                            <h2><strong>Todo</strong> List</h2>
                            <div class="controls">
                                <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                <a href="#" class="remove"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <!-- /tile header -->

                        <!-- tile body -->
                        <div class="tile-body color transparent-black rounded-bottom-corners">
                            <input type="text" placeholder="Add new todo..." class="w100p bottommargin">
                            <ul class="nolisttypes" id="todolist">
                                <li>
                                    <div class="checkbox check-transparent">
                                        <input type="checkbox" value="1" id="todo-01">
                                        <label for="todo-01"> 和宏志导师联系 </label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox check-transparent">
                                        <input type="checkbox" checked="checked" value="1" id="todo-02">
                                        <label for="todo-02" class="done">发送邮件</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox check-transparent">
                                        <input type="checkbox" value="1" id="todo-03">
                                        <label for="todo-03">上传简历</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox check-transparent">
                                        <input type="checkbox" value="1" id="todo-04">
                                        <label for="todo-04">完善信息</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox check-transparent">
                                        <input type="checkbox" value="1" id="todo-05">
                                        <label for="todo-05">准备面试</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="checkbox check-transparent">
                                        <input type="checkbox" value="1" id="todo-06">
                                        <label for="todo-06">查阅导师资料</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /tile body -->



                    </section>
                    <!-- /tile -->


                </div>
                <!-- /col 4 -->

              



            </div>
            <!-- /row -->  



          </div>
          <!-- /content container -->






        </div>
        <!-- Page content end -->









      </div>
      <!-- Make page fluid-->




    </div>
    <!-- Wrap all page content end -->



    <section class="videocontent" id="video"></section>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="assets/js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="assets/js/vendor/blockui/jquery.blockUI.js"></script>

    <script src="assets/js/vendor/flot/jquery.flot.min.js"></script>
    <script src="assets/js/vendor/flot/jquery.flot.time.min.js"></script>
    <script src="assets/js/vendor/flot/jquery.flot.selection.min.js"></script>
    <script src="assets/js/vendor/flot/jquery.flot.animator.min.js"></script>
    <script src="assets/js/vendor/flot/jquery.flot.orderBars.js"></script>
    <script src="assets/js/vendor/easypiechart/jquery.easypiechart.min.js"></script>

    <script src="assets/js/vendor/rickshaw/raphael-min.js"></script> 
    <script src="assets/js/vendor/rickshaw/d3.v2.js"></script>
    <script src="assets/js/vendor/rickshaw/rickshaw.min.js"></script>

    <script src="assets/js/vendor/morris/morris.min.js"></script>

    <script src="assets/js/vendor/tabdrop/bootstrap-tabdrop.min.js"></script>

    <script src="assets/js/vendor/summernote/summernote.min.js"></script>

    <script src="assets/js/vendor/chosen/chosen.jquery.min.js"></script>

    <script src="assets/js/minimal.min.js"></script>

    <script>
    $(function(){

      // Initialize card flip
      $('.card.hover').hover(function(){
        $(this).addClass('flip');
      },function(){
        $(this).removeClass('flip');
      });


      // tooltips showing
      $("#statistics-chart").bind("plothover", function (event, pos, item) {
        if (item) {
          var x = item.datapoint[0],
              y = item.datapoint[1];

          $("#tooltip").html('<h1 style="color: #418bca">' + months[x - 1] + '</h1>' + '<strong>' + y + '</strong>' + ' ' + item.series.label)
            .css({top: item.pageY-30, left: item.pageX+5})
            .fadeIn(200);
        } else {
          $("#tooltip").hide();
        }
      });

      
      //tooltips options
      $("<div id='tooltip'></div>").css({
        position: "absolute",
        //display: "none",
        padding: "10px 20px",
        "background-color": "#ffffff",
        "z-index":"99999"
      }).appendTo("body");


      //todo's
      $('#todolist li label').click(function() {
        $(this).toggleClass('done');
      });

      // Initialize tabDrop
      $('.tabdrop').tabdrop({text: '<i class="fa fa-th-list"></i>'});

      //load wysiwyg editor
      $('#quick-message-content').summernote({
        toolbar: [
          //['style', ['style']], // no style button
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          //['insert', ['picture', 'link']], // no insert buttons
          //['table', ['table']], // no table button
          //['help', ['help']] //no help button
        ],
        height: 143   //set editable area's height
      });

      //multiselect input
      $(".chosen-select").chosen({disable_search_threshold: 10});
      
    })
      
    </script>
  </body>
</html>
      
