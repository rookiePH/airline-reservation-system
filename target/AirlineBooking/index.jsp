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
		<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">查询订单</a></li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="home">
			<form  method="post" action="/seekTicket.action">
				<br><br><br>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">出发城市</span>
					<input type="text" class="form-control" placeholder="DepatureCity" aria-describedby="sizing-addon1" name="stacity">
				</div>
				<br>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon2">到达城市</span>
					<input type="text" class="form-control" placeholder="ArrivingCity" aria-describedby="sizing-addon1" name="tarrcity">
				</div>
				<br>
				<input class="btn btn-default" type="submit" value="搜索机票">

			</form>
		</div>
		<div role="tabpanel" class="tab-pane" id="profile">

			<form  method="post" action="/QueryOrder.action">
				<br><br><br>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon3">用户id</span>
					<input type="text" class="form-control" placeholder="UserId" aria-describedby="sizing-addon1" name="userId">
				</div>
				<br>
				<input class="btn btn-default" type="submit" value="搜索订单">
			</form>

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
			</table>
		</div>
	</div>

</div>



</body>
</html>

