<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/20 0020
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
</head>
<body>
<div >
    <form method="post" action="selectFlight.action">
        出发地：<input type="text" name="startplace">
        到达地：<input type="text" name="endplace">
        <input type="submit" value="搜索">
    </form>


    <div>
        <br>
        <table>
            <tr><th>出发地</th><th>出发时间</th><th>到达地</th><th>到达时间</th></tr>
            <c:forEach items="${flightList}" var="flight">
                <tr>
                    <th>${flight.startplace}</th>
                    <th>${flight.starttime}</th>
                    <th>${flight.endplace}</th>
                    <th>${flight.arrivaltime}</th>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>




</body>
</html>
