<%--
  Created by IntelliJ IDEA.
  User: 79304
  Date: 2017/11/27 0027
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <%@include file="common.jsp"%>
    <%@include file="common/head.jsp"%>
    <%--<script>--%>
        <%--$(function () {--%>
            <%--$("input[name='password2']").blur(function () {--%>
                <%--var p2 = $("input[name='password2']");--%>
                <%--var p = $("input[name='password']");--%>
                <%--if (p2.val()!=p.val()){--%>

                    <%--$(".span").text("两次密码输入不一致。");--%>

                <%--}--%>
            <%--})--%>
        <%--})--%>

    <%--</script>--%>
</head>
<body>
<%@include file="common/header.jsp"%>
<form action="zhuce" method="post">
    <input name="username" placeholder="用户名" type="text" tabindex="1" required>

    <input name="name" placeholder="姓名" type="text" tabindex="3" required>
    <input name="tel" placeholder="电话" type="text" tabindex="3" required>
    <input name="age" placeholder="年龄" type="text" tabindex="3" required>

    <ul>
        <li><label class="radio left"><input type="radio" name="sex" checked="" value="0"><i></i>男</label></li>
        <li><label class="radio"><input type="radio" name="sex" value="1"><i></i>女</label></li>
        <div class="clearfix"></div>
    </ul>
    <div class="col-md-6 account-left">
        <input name="password" placeholder="密码" type="password" tabindex="4" required><span class="span"></span>
        <input name="password2" placeholder="确认密码" type="password" tabindex="4" required>
    </div>
    <p style="...">${requestScope.get("error")}</p>

</form>


</body>
</html>
