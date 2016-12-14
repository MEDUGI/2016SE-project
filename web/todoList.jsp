<%--
  Created by IntelliJ IDEA.
  User: 李沅泽
  Date: 2016/12/14
  Time: 8:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

