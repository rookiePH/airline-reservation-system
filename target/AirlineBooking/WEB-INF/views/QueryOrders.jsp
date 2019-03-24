<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9 0009
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <title>航空票务系统</title>
</head>


<body class="page-container-bg-solid">
<div class="page-wrapper">
    <jsp:include page="head.jsp"/>
    <div class="page-wrapper-row full-height">
        <div class="page-wrapper-middle">
            <!--BEGIN CONTAINER-->
            <div class="page-container">
                <div class="page-content-wrapper">
                    <div class="page-content">
                        <div class="container">
                            <!-- BEGIN PAGE BREADCRUMBS -->
                            <%--<div class="row">--%>
                                <%--<div class="col-md-6">--%>
                                    <%--<ul class="page-breadcrumb breadcrumb">--%>
                                        <%--<li>--%>
                                            <%--<a href="QueryOrders.action?UserId=${sessionScope.get('userSession').userid}">我的订单</a>--%>
                                            <%--<i class="fa fa-circle"></i>--%>
                                        <%--</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <!--END PAGE BREADCRUMBS-->
                            <!--BEGIN PAGE CONTENT INNER-->
                            <div class="page-content-inner" id="meeting-list">
                                <div>
                                    <p>用户信息</p>
                                    <p>用户名：${sessionScope.get('userSession').username}</p>
                                    <p>性别：${sessionScope.get('userSession').sex}</p>
                                    <p>联系方式：${sessionScope.get('userSession').phonenumber}</p>
                                </div>
                                <div>
                                    <br>
                                        <table>
                                            <tr><th>航班</th><th>出发地</th><th>到达地</th><th>出发时间</th><th>到达时间</th><th>座位类型</th><th>座位号</th><th>价格</th></tr>
                                            <c:forEach items="${orderDTOList}" var="order"><%--//循环打印--%>
                                                <%--以单次循环作为修改记录的基本单位--%>
                                                <tr>
                                                    <th>${order.flightname}</th>
                                                    <th>${order.startplace}</th>
                                                    <th>${order.endplace}</th>
                                                    <th>${order.starttime}</th>
                                                    <th>${order.arrivaltime}</th>
                                                    <th>${order.seattype}</th>
                                                    <th>${order.seatid}</th>
                                                    <th>${order.price}</th>
                                                    <th><a href="RefundTicket.action?orderid=${order.orderid}">退票</a></th>
                                                </tr>
                                            </c:forEach>
                                        </table>
                                    </div>





                            </div>
                            <!--END PAGE CONTENT INNER-->
                        </div>
                    </div>
                    <!--END PAGE CONTENT BODY-->
                    <!--END CONTENT BODY-->
                </div>
                <!-- END CONTENT -->
                <!-- BEGIN QUICK SIDEBAR -->
                <a href="javascript:;" class="page-quick-sidebar-toggler">
                    <i class="icon-login"></i>
                </a>
            </div>
        </div>
        <!-- END QUICK SIDEBAR -->
    </div>

</div>




</body>
</html>
