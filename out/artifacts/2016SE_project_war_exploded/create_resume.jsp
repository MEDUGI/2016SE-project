<%--
  Created by IntelliJ IDEA.
  User: forandroid
  Date: 16-12-12
  Time: 下午1:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<section id="resume" name="resume"></section>
<!--EDUCATION DESCRIPTION -->
<div class="container desc">
    <div class="row">

        <div class="col-lg-2 col-lg-offset-1">
            <h5>简历信息</h5>
        </div>
        <div class="col-lg-6">
            <s:if test='userstyle == "Professor"'>
                <p><t><s:property value="employerUnit" /></t><br/>
                    <s:property value="workingArea" /> <br/>
                    <i><s:property value="paperPublished" /></i>
                </p>
            </s:if>
            <s:elseif test='userstyle == "Student"'>
                <p><t><s:property value="graduateSchool" /></t><br/>
                    <s:property value="major" /> <br/>
                    <i><s:property value="awardsCollection" /></i>
                </p>
            </s:elseif>
        </div>
        <div class="col-lg-3">
            <p><sm>GRADUATING IN MAY 2014</sm><br/>
                <imp><sm>IN PROGRESS</sm></imp>
            </p>
        </div>

        <!--<div class="col-lg-6 col-lg-offset-3">
            <p><t>Degree of Web Developer</t><br/>
                Hastings University <br/>
                <i>2 Years Course</i>
            </p>
        </div>
        <div class="col-lg-3">
            <p><sm>JUNE 2012</sm></p>
        </div> -->

    </div><!--/.row -->
    <br>
    <hr>
</div><!--/.container -->
</body>
</html>
