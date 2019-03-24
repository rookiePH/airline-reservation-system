<%--
  Created by IntelliJ IDEA.
  User: newflame
  Date: 2018/4/21
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="/assets/global/plugins/bootstrap-sweetalert/sweetalert.css" rel="stylesheet" type="text/css"/>

</head>
<body>

<div class="sweet-overlay" tabindex="-1" style="opacity: 1.06; display: none;" id="motai"></div>
<div class="sweet-alert  showSweetAlert visible" tabindex="-1" data-custom-class="" data-has-cancel-button="false"
     data-has-confirm-button="true" data-allow-outside-click="true" data-has-done-function="true" data-animation="pop"
     data-timer="null" style="display: none; margin-top: -120px;opacity: -2;" id="alertFooter">
    <div class="sa-icon sa-error animateErrorIcon" style="display: none;" id="error">
      <span class="sa-x-mark animateXMark">
        <span class="sa-line sa-left"></span>
        <span class="sa-line sa-right"></span>
      </span>
    </div>
    <div class="sa-icon sa-success animate" style="display: none;" id="success">
        <span class="sa-line sa-tip animateSuccessTip"></span>
        <span class="sa-line sa-long animateSuccessLong"></span>

        <div class="sa-placeholder"></div>
        <div class="sa-fix"></div>
    </div>
    <h2 id="headTitle"></h2>
    <p class="lead text-muted " style="display: block;" id="alertBody"></p>
    <div class="form-group">
        <input type="text" class="form-control" tabindex="3" placeholder="">
        <span class="sa-input-error help-block">
        <span class="glyphicon glyphicon-exclamation-sign"></span> <span class="sa-help-text">Not valid</span>
      </span>
    </div>
    <div class="sa-button-container">
        <a class="cancel btn btn-lg btn-default" tabindex="2" style="display: none;" id="alertCanle">取消</a>
        <div class="sa-confirm-button-container">
            <a class="confirm btn btn-lg btn-danger" tabindex="1" style="display: inline-block;" id="makeSure">确定</a>
            <div class="la-ball-fall">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
