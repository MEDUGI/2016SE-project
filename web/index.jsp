<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>研究生导师互选推荐系统</title>
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
                                        <span class="subject"><s:property value="paperPublished" /></span>
                                    </li>
                                </s:if>
                                <s:elseif test='userstyle == "Student"'>
                                    <li>
                                        <span class="user font-slab"><strong>毕业院校</strong></span>
                                        <span class="subject"><s:property value="employerUnit" /></span>
                                    </li>
                                    <li>
                                        <span class="user font-slab"><strong>原专业方向</strong></span>
                                        <span class="subject"><s:property value="workingArea" /></span>
                                    </li>
                                    <li>
                                        <span class="user font-slab"><strong>准备攻读方向</strong></span>
                                        <span class="subject"><s:property value="paperPublished" /></span>
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
                            <form class="form-horizontal" role="form" id="quickmsg" action="sendMessage.action" method="post">
                                <div class="form-group">
                                    <label for="message-to" class="col-sm-2 control-label font-slab">收信人</label>
                                    <div class="col-sm-10">
                                        <input class="form-control transparent" type="text" name="userTo" id="message-to" placeholder="输入用户邮箱">
                                    </div>
                                </div>
                                <div class="form-group no-bottom-margin">
                                    <label for="subject" class="col-sm-2 control-label font-slab">标题</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control transparent" id="subject" placeholder="在这里输入标题" name="title">
                                    </div>
                                </div>
                                <input name="userFrom" value="#session.username" hidden>
                                <input id="msgcontent" name="message" type="text" hidden>
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
                            <a class="submit font-slab" onclick="msgsubmit();"><strong>Send</strong> message <i class="fa fa-comment"></i></a>
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
                            <h2><strong>备忘录</strong></h2>
                            <div class="controls">
                                <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                <a href="#" class="remove"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <!-- /tile header -->

                        <!-- tile body -->
                        <div class="tile-body color transparent-black rounded-bottom-corners">
                            <input type="text" placeholder="加入新的备忘录..." class="w100p bottommargin">
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
    <script type="text/javascript">

        function msgsubmit()
        {
            var form = document.getElementById("quickmsg");
            var content = $('#quick-message-content').code();
            document.getElementById("message").value = content;
            form.submit();
        }

    </script>
  </body>
</html>
      
