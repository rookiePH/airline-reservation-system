 <%--<form method="post" action="addOrder.action">--%>
     <%--<input type="hidden" name="flightid" value="${flightid}">--%>
     <%--<input type="hidden" name="userid" value="${sessionScope.get('userSession').userid}">--%>
     <%--座位编号：<input type="text" name="seatid"><br>--%>
     <%--<input type="submit" value="提交订单">--%>
 <%--</form>--%>
 <%--<a href="QueryOrders.action?UserId=${sessionScope.get('userSession').userid}">查看我的订单</a>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>航空票务系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/assets/css/jquery.seat-charts.css">
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
</head>
<body>
<div class="page-wrapper">
    <div class="page-container">
        <div id="seat-map">
            <div class="front-indicator">机头</div>
        </div>
        <div class="booking-details">
            <h3>已选中的座位 (<span id="counter">0</span>):</h3>
            <ul id="selected-seats">
            </ul>
            <p>总价: <b>$<span id="total">0</span></b></p>
            <p>
            </p>
            <div id="legend"></div>
        </div>
        <form method="post" action="addOrder.action">
        <input type="hidden" name="flightid" value="${flightid}">
        <input type="hidden" name="userid" value="${sessionScope.get('userSession').userid}">
        座位编号：<input type="text" name="seatid"><br>
        <input type="submit" value="提交订单">
    </form>
        <a href="QueryOrders.action?UserId=${sessionScope.get('userSession').userid}">查看我的订单</a>

    </div>
</div>
<script src="/assets/js/jquery-1.11.0.min.js"></script>
<script src="/assets/js/jquery.seat-charts.min.js"></script>
<script>
    var firstSeatLabel = 1;

    $(document).ready(function() {
        var $cart = $('#selected-seats'),
            $counter = $('#counter'),
            $total = $('#total'),
            sc = $('#seat-map').seatCharts({
                map: [
                    'ff_ff',
                    'ff_ff',
                    'ee_ee',
                    'ee_ee',
                    'ee___',
                    'ee_ee',
                    'ee_ee',
                    'ee_ee',
                    'ee_ee',
                    'eeeee',
                ],
                seats: {
                    f: {
                        price   : 100,
                        classes : 'first-class', //your custom CSS class
                        category: '头等舱'
                    },
                    e: {
                        price   : 40,
                        classes : 'economy-class', //your custom CSS class
                        category: '经济舱'
                    }

                },
                naming : {
                    top : false,
                    getLabel : function (character, row, column) {
                        return firstSeatLabel++;
                    },
                },
                legend : {
                    node : $('#legend'),
                    items : [
                        [ 'f', 'available',   '头等舱' ],
                        [ 'e', 'available',   '经济舱'],
                        [ 'f', 'unavailable', '已预定']
                    ]
                },
                click: function () {
                    if (this.status() == 'available') {
                        $('<li>'+this.data().category+this.settings.label+'号座位'+'：<br/>价格：<b>$'+this.data().price+'</b> <a href="#" class="cancel-cart-item">[删除]</a></li>')
                            .attr('id','cart-item-'+this.settings.id)
                            .data('seatId', this.settings.id)
                            .appendTo($cart);
                        $counter.text(sc.find('selected').length+1);
                        $total.text(recalculateTotal(sc)+this.data().price);

                        return 'selected';
                    } else if (this.status() == 'selected') {
                        //update the counter
                        $counter.text(sc.find('selected').length-1);
                        //and total
                        $total.text(recalculateTotal(sc)-this.data().price);

                        //remove the item from our cart
                        $('#cart-item-'+this.settings.id).remove();

                        //seat has been vacated
                        return 'available';
                    } else if (this.status() == 'unavailable') {
                        //seat has been already booked
                        return 'unavailable';
                    } else {
                        return this.style();
                    }
                }
            });

        //this will handle "[cancel]" link clicks
        $('#selected-seats').on('click', '.cancel-cart-item', function () {
            //let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
            sc.get($(this).parents('li:first').data('seatId')).click();
        });

        //let's pretend some seats have already been booked
        sc.get(['1_2', '4_1', '7_1', '7_2']).status('unavailable');

    });

    function recalculateTotal(sc) {
        var total = 0;

        //basically find every selected seat and sum its price
        sc.find('selected').each(function () {
            total += this.data().price;
        });

        return total;
    }

</script>

</body>
</html>
