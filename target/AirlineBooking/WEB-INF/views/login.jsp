<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8"%>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>航空票务系统|登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="/assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="/assets/pages/css/login.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico" /> </head>
<!-- END HEAD -->

<body class=" login">
<!-- BEGIN LOGIN -->
<div class="content">
    <!-- BEGIN LOGIN FORM -->
    <form class="login-form" method="post" action="login.action">
        <h3 class="form-title font-green">航空票务系统</h3>
        <div class="form-group">
            邮箱：
            <input id="email" class="form-control form-control-solid placeholder-no-fix" type="email" autocomplete="off" placeholder="email" name="email" />
        </div>
        <div class="form-group">
            密码：
            <input id="password" class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="password" name="password" />
        </div>
        <div class="form-actions">
            <input id="loginButton" class="btn green uppercase" type="submit" value="登录"/>
        </div>
    </form>
    <!-- END LOGIN FORM -->
</div>
<div class="copyright"> 16软件1班 小组成员：饶婷婷 陈雨思 柯群楠 胡美燕 贺珊
</div>
<jsp:include page="alert.jsp"/>
<!-- BEGIN CORE PLUGINS -->
<script src="/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="/assets/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/assets/pages/scripts/login.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<!-- END THEME LAYOUT SCRIPTS -->
<%--<script>--%>
    <%--$(document).ready(function()--%>
    <%--{--%>
        <%--$('#clickmewow').click(function()--%>
        <%--{--%>
            <%--$('#radio1003').attr('checked', 'checked');--%>
        <%--});--%>
    <%--});--%>
    <%--$("#loginButton").click(function () {--%>
        <%--$.ajax({--%>
            <%--type: "GET",--%>
            <%--url: "user/login",--%>
            <%--data: {"email": $("#email").val(), "password":$("#password").val()},--%>
            <%--dataType: "json",--%>
            <%--success:function (data) {--%>
                <%--console.log(data);--%>
                <%--console.log(data.code == 20001 )--%>
                <%--if (data.code != null && data.code == 20001) {--%>
                    <%--window.location.href="<%=request.getContextPath()%>/views/home"--%>
                <%--} else {--%>
                    <%--errorAlert("用户名或者密码错误！", "");--%>
                <%--}--%>
            <%--},--%>
            <%--error:function (jqXHR , textStatus, errorThrown) {--%>
                <%--errorAlert("不好意思!出错了！请稍后再试！", "");--%>
            <%--}--%>
        <%--})--%>
    <%--})--%>
<%--</script>--%>
</body>

</html>