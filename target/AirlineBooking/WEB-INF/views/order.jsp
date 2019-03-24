<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2018/10/20
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>机票预订系统</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
</head>
<body>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<!-- 引入jQuery核心js文件 -->
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/initial.js"></script>

<div class="page-header">
    <h1> Ticket booking system</h1>
</div>
<div>

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">查询机票</a></li>
       <%-- <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">查询订单</a></li>
    </ul>--%></ul>
    <br><br>
    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <div class="abs_container clearfix b_container">
            <form method="post" action="/addOrder.action">
                <input type="hidden" name="flightId" value="${seat.flightId}">
                <input type="hidden" name="seatId" value="${seat.seatId}">
                <input type="hidden" name="userId" value="${sessionScope.get('userSession').userId}">
                <input type="submit"class="btn btn-default" value="提交订单"> &nbsp;&nbsp;&nbsp;&nbsp;<a href="/transfer.jsp"><input class="btn btn-default" style="width: 70px;" value="换乘"></a>

            </form>
            </div>
            <a href="QueryOrders.action?UserId=${sessionScope.get('userSession').userId}">查看我的订单</a>
            <table class="table table-hover" style="color:gray;">
                <tr><th>&nbsp;&nbsp;订单ID</th><th>航班ID</th><th>航班类型</th><th>出发地</th><th>到达地</th><th>起飞时间</th><th>到达时间</th>
                    <th>座位号<th><%-- <th>价格<th>--%>是否退票</th></tr>
               <c:forEach items="${orderList}" var="order">
                <tr>
                    <th>&nbsp;&nbsp;${order.orderId}</th>
                    <th>${order.flightId}</th>
                    <th>${order.flighttype}</th>
                    <th>${order.stacity}</th>
                    <th>${order.tarrcity}</th>
                    <th>${order.depaturetime}</th>
                    <th>${order.arrivaltime}</th>
                    <th>${order.seatId}</th>
                   <%-- <th>${order.price}</th>--%>
                    <th><a href="RefundTicket.action?orderid=${order.orderId}">退票</a></th>
                </tr>
               </c:forEach>
            </table></div>
        </div>
        <div role="tabpanel" class="tab-pane" id="profile"></div>
    </div>

</div>





</body>
</html>
