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
		<%--<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">查询订单</a></li>--%>
	</ul>
	<br><br>
	<!-- Tab panes -->
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="home">

			<table class="table table-hover" style="color:gray;">
				<tr>
					<th>航班ID</th>
					<th>&nbsp;&nbsp;&nbsp;&nbsp;航班类型</th>
					<th>&nbsp;出发地</th>
					<th>&nbsp;到达地</th>
					<th>&nbsp;起飞时间</th>
					<th>&nbsp;&nbsp;到达时间</th>
					<th>&nbsp;起飞机场</th>
					<th>&nbsp;到达机场</th>
					<th onclick="sortTable(1)">&nbsp;价格
					<th onclick="sortTable(2)">&nbsp;折扣</th>
					<th>是否订购</th>
				</tr>
				<c:forEach items="${list}" var="flight">

					<tbody>
					<tr>
						<th>${flight.flightId}</th>
						<th>${flight.flighttype}</th>
						<th>${flight.stacity}</th>
						<th>${flight.tarrcity}</th>
						<th>${flight.depaturetime}</th>
						<th>${flight.arrivaltime}</th>
						<th>${flight.startariport}</th>
						<th>${flight.arrivingairport}</th>
						<th>${flight.price}</th>
						<th>${flight.discount}</th>
						<th><a href="/book.action?flight=${flight.flightId}">购票</a></th>
					</tr>
					</tbody>
				</c:forEach>
			</table>
		</div>
		<div role="tabpanel" class="tab-pane" id="profile">...</div>
	</div>

</div>






</body>
</html>