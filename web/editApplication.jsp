<%@ taglib prefix="s" uri="/struts-tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>申请信息填写</title>
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









            <!-- content main container -->
            <div class="main">




                <!-- row -->
                <div class="row">


                    <div class="col-md-6">



                        <!-- tile -->
                        <section class="tile transparent">




                            <!-- tile header -->
                            <div class="tile-header transparent">
                                <h1>发送申请</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile widget -->
                            <div class="tile-widget color transparent-black rounded-top-corners">
                                <form class="form-horizontal" role="form" id="quickmsg" action="sendApplication.action" method="post">
                                    <div class="form-group">
                                        <label for="message-to" class="col-sm-2 control-label font-slab">收信人</label>
                                        <div class="col-sm-10">
                                            <input class="form-control transparent" type="text" name="userTo" id="message-to" placeholder="输入用户邮箱">
                                        </div>
                                    </div>
                                    <input id="message" name="message" type="text" hidden>
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

