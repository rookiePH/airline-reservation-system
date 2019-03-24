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
                                <%--<jsp:include page="FlightList.jsp"/>--%>
                                    <div >
                                        <form method="post" action="selectFlight.action">
                                            出发地：<input type="text" name="startplace">
                                            到达地：<input type="text" name="endplace">
                                            <input type="submit" value="搜索">
                                        </form>


                                        <div>
                                            <br>
                                            <table>
                                                <tr><th>航班号</th><th>&nbsp;出发地</th><th>&nbsp;&nbsp;出发时间</th><th>&nbsp;到达地</th><th>&nbsp;&nbsp;到达时间</th></tr>
                                                <c:forEach items="${flightList}" var="flight">
                                                    <tr>
                                                        <th>${flight.flightname}</th>
                                                        <th>${flight.startplace}</th>
                                                        <th>${flight.starttime}</th>
                                                        <th>${flight.endplace}</th>
                                                        <th>${flight.arrivaltime}</th>
                                                        <th><a href="selectSeat.action?flightid=${flight.flightid}">选座购票</a></th>
                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </div>
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
