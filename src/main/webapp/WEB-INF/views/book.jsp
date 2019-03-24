<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
    
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="UTF-8">
	<title>机票查询</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">

	<base href="<%=basePath%>">
	<link rel="SHORTCUT ICON" href="<%=path %>/images/airplane.icon"/>
	<link rel="stylesheet" href="<%=path %>/css/absBase.css">
	<link rel="stylesheet" href="<%=path %>/css/booking.css">
	<link rel="SHORTCUT ICON" href="<%=path %>/images/airplane.icon"/>
	<script type="text/javascript" src="<%=path %>/js/booking.js"></script>

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

<div class="page-header">
	<h1> Ticket booking system</h1>
</div>

<div>

	<!-- Nav tabs -->
	<ul class="nav nav-tabs" role="tablist">
		<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">查询机票</a></li>
		<%--<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">查询订单</a></li>--%>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<br><br>
		<div role="tabpanel" class="tab-pane active" id="home">
			<div class="abs_container clearfix b_container">

				<form action="/addUser.action" method="post" class="b_form">

					航班号：${flightid}<span class="b_form_title">乘客</span>

					<div id="b_formItem_container">
						<div class="b_form_item ">

							<div class="bf_item_textArea">
								<div class="bf_item_text clearfix">
									<span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span>
									<div>
										<input type="text" name="userName" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
									</div>
								</div>
								<div class="bf_item_text clearfix">
									<span>身&nbsp;&nbsp;份&nbsp;&nbsp;证：</span>
									<div>
										<input type="text" name="idnumber" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
									</div>
								</div>
								<div class="bf_item_text clearfix">
									<span>联系电话：</span>
									<div>
										<input type="text" name="telephone" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
									</div>
								</div>

							</div>

						</div>
					</div>

					<div>
						<input class="b_form_submit" type="submit" name="submitButton" value="确定">
					</div>
				</form>


				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">+添加乘客</button>

				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<%--<form action="/buyticket.action" method="post" class="b_form">--%>
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="exampleModalLabel">添加乘客</h4>
							</div>
							<form action="/addUser.action" method="post">

								<div class="modal-body">

									<div class="form-group">
										<label for="recipient-name" class="control-label">姓名:</label>
										<input type="text" name="userName" class="form-control" id="recipient-name">
									</div>
									<div class="form-group">
										<label for="recipient-name" class="control-label">身份证:</label>
										<input type="text" name="idnumber" class="form-control" id="recipient">
									</div>
									<div class="form-group">
										<label for="recipient-name" class="control-label">联系电话:</label>
										<input type="text" name="telephone" class="form-control" id="recipien">
									</div>
								</div>
								<div class="modal-footer">
									<input type="submit" class="btn btn-primary" value="确认">
								</div>
							</form>
						</div>
					</div>
				</div>

		</div>
		<div role="tabpanel" class="tab-pane" id="profile">...</div>
	</div>

</div>
</div>
</body>
</html>