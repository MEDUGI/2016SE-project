<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>个人信息修改</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

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
                <h2><i class="fa fa-tachometer"></i> 个人信息修改</h2>
            </div>
            <!-- /page header -->
            <!-- content main container -->
            <div class="main">
                <!-- row -->
                <div class="row">
                    <div class="col-md-6">
                        <section class="tile transparent">

                            <!-- tile header -->
                            <div class="tile-header transparent">
                                <h1><strong>修改</strong> 个人信息</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->
                            <div class="tile-widget color transparent-black rounded-top-corners">
                                <form action="changeInformation.action" role="form" method="post" class="form-horizontal">
                                    <s:if test="#session.userstyle=='Student'">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <label class="input-group-addon" id="tips">毕业院校</label>
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

                                    </s:if>
                                    <s:if test="#session.userstyle=='Professor'">

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


                                    </s:if>
                                    <s:if test="#session.userstyle=='Student'">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-block btn-login">
                                                <i class="icon-signin"></i>
                                                修改信息
                                            </button>
                                        </div>
                                    </s:if>
                                    <s:else>
                                        <div class="form-group">
                                            <button type="button" onclick="sum_sumbit()" class="btn btn-primary btn-block btn-login">
                                                <i class="icon-signin"></i>
                                                修改信息
                                            </button>
                                        </div>
                                    </s:else>
                                </form>
                            </div>
                        </section>
                    </div>

                </div>



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
        //multiselect input
        $(".chosen-select").chosen({disable_search_threshold: 10});

    })
</script>
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
</body>
</html>

