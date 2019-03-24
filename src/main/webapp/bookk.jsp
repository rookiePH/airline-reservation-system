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
</head>
<body>

	<div class="abs_container clearfix b_container">

			<form action="servlet/OrderServlet" method="post" class="b_form">
				<span class="b_form_title">乘客</span>

				<div id="b_formItem_container">
					<div class="b_form_item ">
						<div class="bf_item_idArea">
							<span class="bf_item_id">1</span>
						</div>

						<div class="bf_item_textArea">
							<div class="bf_item_text clearfix">
								<span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span>
								<div>
									<input type="text" name="name" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
								</div>
							</div>
							<div class="bf_item_text clearfix">
								<span>身&nbsp;&nbsp;份&nbsp;&nbsp;證：</span>
								<div>
									<input type="text" name="passport" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
								</div>
							</div>
							<div class="bf_item_text clearfix">
								<span>聯繫電話：</span>
								<div>
									<input type="text" name="passport" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
								</div>
							</div>
							<div class="bf_item_seatType">
								<span class="bf_label">座位号：</span>
								<select class="bf_text" name="seatType">
				  					<option></option>
				  					<option value ="01">01</option><option value ="02">02</option><option value ="03">03</option>
				  					<option value ="04">04</option><option value ="05">05</option><option value ="06">06</option>
				  					<option value ="07">07</option><option value ="08">08</option><option value ="09">09</option>
				  					<option value ="10">10</option><option value ="11">11</option><option value ="12">12</option>
				  					<option value ="13">13</option><option value ="14">14</option><option value ="15">15</option>
				  					<option value ="16">16</option><option value ="17">17</option><option value ="18">18</option>
				  					<option value ="19">19</option><option value ="20">20</option><option value ="21">21</option>
				  					<option value ="22">22</option><option value ="23">23</option><option value ="24">24</option>
				  					<option value ="25">25</option><option value ="26">26</option><option value ="27">27</option>
				  					<option value ="28">28</option><option value ="29">29</option><option value ="30">30</option>
								</select>
							</div>
						</div>
						<div class="bf_item_subtotalArea">
							<div class="bf_item_delete clearfix">
								<span onclick="deleteItem(this)">删除</span>
								<img src="images/close_icon.png" onclick="deleteItem(this)">
							</div>
							<!--<div class="bf_item_subtotal">
								<c:forEach items="${flightInfoList}" var="flightInfo">
									<span>￥
									<fmt:formatNumber type="number" groupingUsed="false" value="${flightInfo.fare}" />
								</span>
								</c:forEach>
							</div>-->
						</div>
					</div>
				</div>

				<!-- other form_item -->

				<div>
					<button class="b_form_addItem" type="button" onclick="addItem()">+ 添加乘客</button>
				</div>

				<div class="b_form_mainPassenger">
					<div class="b_form_title1 clearfix">联系人</div>

					<div class="bf_passenger_info clearfix">

						<div class="bfp_info_text">

							<span>姓&nbsp;&nbsp;名：</span>
							<div>
								<input type="text" name="contact" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
							</div>
						</div>
						<div class="bfp_info_text">
							<span>手机号：</span>
							<div>
								<input type="text" name="phone" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
							</div>
						</div>
					</div>
				</div>

				<c:forEach items="${flightInfoList}" var="flightInfo">
					<input type="hidden" name="flightInfoID" value="${flightInfo.id}">
				</c:forEach>

				<div>
					<input class="b_form_submit" type="submit" name="submitButton" value="提交订单" onclick="javascrtpt:window.location.href='index.html'">
				</div>
			</form>
			<div class="b_plane">
				<div class="b_seat1">
					<span id="seat1">01</span><span id="seat2">02</span><span id="seat3">03</span>
					<span id="seat7">07</span><span id="seat8">08</span><span id="seat9">09</span>
					<span id="seat13">13</span><span id="seat14">14</span><span id="seat15">15</span>
					<span id="seat19">19</span><span id="seat20">20</span><span id="seat21">21</span>
					<span id="seat25">25</span><span id="seat26">26</span><span id="seat27">27</span>
				</div>
				<div class="b_seat2">
					<span id="seat4">04</span><span id="seat5">05</span><span id="seat6">06</span>
					<span id="seat10">10</span><span id="seat11">11</span><span id="seat12">12</span>
					<span id="seat16">16</span><span id="seat17">17</span><span id="seat18">18</span>
					<span id="seat22">22</span><span id="seat23">23</span><span id="seat24">24</span>
					<span id="seat28">28</span><span id="seat29">29</span><span id="seat30">30</span>
				</div>
				<button class="b_seat_addItem" type="button" onclick="seat()">刷新座位表</button>
				<div class="b_seat3">
					注：蓝色为可选座位
				</div>
			</div>
			<div id="b_formItem">
				<div class="b_form_item clearfix">
					<div class="bf_item_idArea">
						<span class="bf_item_id">${num}</span>
					</div>

					<div class="bf_item_textArea">
						<div class="bf_item_text clearfix">
							<span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span>
							<div>
								<input type="text" name="name" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
							</div>
						</div>
						<div class="bf_item_text clearfix">
							<span>身&nbsp;&nbsp;份&nbsp;&nbsp;證：</span>
							<div>
								<input type="text" name="passport" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
							</div>
						</div>
						<div class="bf_item_text clearfix">
							<span>聯繫電話：</span>
							<div>
								<input type="text" name="passport" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
							</div>
						</div>
						<div class="bf_item_seatType">
							<span class="bf_label">座位号：</span>
								<select class="bf_text" name="seatType">
				  					<option></option>
				  					<option value ="01">01</option><option value ="02">02</option><option value ="03">03</option>
				  					<option value ="04">04</option><option value ="05">05</option><option value ="06">06</option>
				  					<option value ="07">07</option><option value ="08">08</option><option value ="09">09</option>
				  					<option value ="10">10</option><option value ="11">11</option><option value ="12">12</option>
				  					<option value ="13">13</option><option value ="14">14</option><option value ="15">15</option>
				  					<option value ="16">16</option><option value ="17">17</option><option value ="18">18</option>
				  					<option value ="19">19</option><option value ="20">20</option><option value ="21">21</option>
				  					<option value ="22">22</option><option value ="23">23</option><option value ="24">24</option>
				  					<option value ="25">25</option><option value ="26">26</option><option value ="27">27</option>
				  					<option value ="28">28</option><option value ="29">29</option><option value ="30">30</option>
								</select>
						</div>
					</div>
					<div class="bf_item_subtotalArea">
						<div class="bf_item_delete clearfix">
							<span onclick="deleteItem(this)">删除</span>
							<img src="images/close_icon.png" onclick="deleteItem(this)">
						</div>
						<!--<div class="bf_item_subtotal">
							<c:forEach items="${flightInfoList}" var="flightInfo">
								<span>￥
							<fmt:formatNumber type="number" groupingUsed="false" value="${flightInfo.fare}" />
						</span>
							</c:forEach>
						</div>-->
					</div>
				</div>
			</div>
	</div>
</body>
</html>