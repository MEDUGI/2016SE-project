<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/12/14
  Time: 8:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
