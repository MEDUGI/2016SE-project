<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: zxx_1
  Date: 2016/12/13
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>查看申请</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="assets/js/vendor/mmenu/css/jquery.mmenu.all.css" />
    <link rel="stylesheet" href="assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">
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
        <%@include file="navbar.jsp"%>
        <!-- Fixed navbar end -->






        <!-- Page content -->
        <div id="content" class="col-md-12">









            <!-- page header -->
            <div class="pageheader">


                <h2><i class="fa fa-puzzle-piece" style="line-height: 48px;padding-left: 5px;"></i> 申请一览</h2>


            </div>
            <!-- /page header -->






            <!-- content main container -->
            <div class="main">




                <!-- row -->
                <div class="row">

                    <!-- col 6 -->
                    <div class="col-md-6">



                        <section class="tile color transparent-black">



                            <!-- tile header -->
                            <div class="tile-header">
                                <h1>待批复请求</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile body -->
                            <div class="tile-body nopadding">

                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>发出</th>
                                        <th>发至</th>
                                        <th>发出日期</th>
                                        <th>附言</th>
                                        <th>查看主页</th>
                                        <th>接受/拒绝</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="receivedApplication">
                                        <tr>
                                            <td><s:property value="id"/> </td>
                                            <td><s:property value="from"/></td>
                                            <td><s:property value="to"/></td>
                                            <td><s:property value="applydate"/></td>
                                            <td><s:property value="message" escape="false"/></td>
                                            <td><a href="mainpage.action?username=<s:property value="to"/>">查看主页</a></td>
                                            <td><a href="replyApplication.action?isAccepted=true&applicationId=<s:property value="ID"/>">同意</a> <a href="replyApplication.action?isAccepted=false&applicationId=<s:property value="ID"/>">拒绝</a> </td>
                                        </tr>
                                    </s:iterator>
                                    </tbody>
                                </table>

                            </div>
                            <!-- /tile body -->




                        </section>
                        <section class="tile color transparent-black">



                            <!-- tile header -->
                            <div class="tile-header">
                                <h1>我发出请求</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile body -->
                            <div class="tile-body nopadding">

                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>发至</th>
                                        <th>发出日期</th>
                                        <th>附言</th>
                                        <th>修改</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="myApplication">
                                        <tr>
                                            <td><s:property value="id"/> </td>
                                            <td><s:property value="to"/></td>
                                            <td><s:property value="applydate"/></td>
                                            <td><s:property value="message" escape="false"/> </td>
                                            <td><a href="modifyApplication.action?applicationId=<s:property value="ID"/> ">修改</a></td>
                                        </tr>
                                    </s:iterator>
                                    </tbody>
                                </table>

                            </div>
                            <!-- /tile body -->




                        </section>
                        <section class="tile color transparent-black">



                            <!-- tile header -->
                            <div class="tile-header">
                                <h1>已生效请求</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile body -->
                            <div class="tile-body nopadding">

                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>发出</th>
                                        <th>发至</th>
                                        <th>发出日期</th>
                                        <th>查看主页</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <s:iterator value="succeededApplication">
                                        <tr>
                                            <td><s:property value="id"/> </td>
                                            <td><s:property value="from"/></td>
                                            <td><s:property value="to"/></td>
                                            <td><s:property value="applydate"/></td>
                                            <td><a href="mainpage.action?username=<s:property value="from"/>">查看主页</a></td>
                                        </tr>
                                    </s:iterator>
                                    </tbody>
                                </table>

                            </div>
                            <!-- /tile body -->




                        </section>



                    </div>
                    <!-- /col 6 -->



                    <!-- col 6 -->
                    <div class="col-md-6">


                    </div>
                    <!-- /col 6 -->


                    <!-- col 12 -->
                    <div class="col-md-12">



                    </div>
                    <!-- /col 12 -->


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
<script src="assets/js/vendor/summernote/summernote.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="assets/js/vendor/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
<script type="text/javascript" src="assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
<script type="text/javascript" src="assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
<script type="text/javascript" src="assets/js/vendor/videobackground/jquery.videobackground.js"></script>
<script type="text/javascript" src="assets/js/vendor/blockui/jquery.blockUI.js"></script>


<script src="assets/js/vendor/chosen/chosen.jquery.min.js"></script>

<script src="assets/js/minimal.min.js"></script>

<script>
    $(function(){


        //check all checkboxes
        $('table thead input[type="checkbox"]').change(function () {
            $(this).parents('table').find('tbody input[type="checkbox"]').prop('checked', $(this).prop('checked'));
        });

        // sortable table
        $('.table.table-sortable th.sortable').click(function() {
            var o = $(this).hasClass('sort-asc') ? 'sort-desc' : 'sort-asc';
            $(this).parents('table').find('th.sortable').removeClass('sort-asc').removeClass('sort-desc');
            $(this).addClass(o);
        });

        //chosen select input
        $(".chosen-select").chosen({disable_search_threshold: 10});

        //check toggling
        $('.check-toggler').on('click', function(){
            $(this).toggleClass('checked');
        })

    })

</script>
</body>
</html>

