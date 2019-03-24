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
    <title>选座购票</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <base href="<%=basePath%>">
    <link rel="SHORTCUT ICON" href="<%=path %>/images/airplane.icon"/>
    <link rel="stylesheet" href="<%=path %>/css/absBase.css">
    <link rel="stylesheet" href="<%=path %>/css/booking.css">
    <link rel="SHORTCUT ICON" href="<%=path %>/images/airplane.icon"/>
    <link rel="stylesheet" type="text/css" href="css/jquery.seat-charts.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="<%=path %>/js/booking.js"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <title>选座</title>


</head>
<body>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

<!-- 引入jQuery核心js文件 -->
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/jquery.seat-charts.min.js"></script>
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
                        price : 100,
                        classes : 'first-class', //your custom CSS class
                        category: '头等舱'
                    },
                    e: {
                        price : 40,
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
                        [ 'f', 'available', '头等舱' ],
                        [ 'e', 'available', '经济舱'],
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
        // sc.get(['1_2', '4_1', '7_1', '7_2']).status('unavailable');

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

<div class="page-header">
    <h1> Ticket booking system</h1>
</div>
<div>

    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">查询机票</a></li>
        <%-- <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">--%>
    </ul>
    <br><br>
    <!-- Tab panes -->
    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="home">
            <div class="abs_container clearfix b_container">

                <form action="/chooseseat.action" method="post" class="b_form">

                    <div id="b_formItem_container">
                        <div class="b_form_item ">
                            <div class="bf_item_textArea">
                                <div class="bf_item_text clearfix">
                                    <div>
                                        航班号：<input type="text" name="flightId" onfocus="textOnFocus(this)" onblur="textOnBlur(this)">
                                    </div>
                                </div>
                                <div class="bf_item_text clearfix">
                                    <div>
                                        <input type="hidden" name="userId" value="${sessionScope.get('userSession').userId}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bf_item_seatType">
                        <span class="bf_label">座位类型：</span>
                        <select class="bf_text" name="seattype" style="width: 70px;">
                            <option></option>
                            <option value ="经济舱">经济舱</option><option value ="商务舱">商务舱</option>

                        </select>
                    </div>
                    <div class="bf_item_seatType">
                        <span class="bf_label">座位号：</span>
                        <select class="bf_text" name="seatId">
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

                    <div>
                        <input class="b_form_submit" type="submit" name="submitButton" value="下一步">
                    </div>
                </form>

            </div>
        </div>


    </div>
</div>


</div>

</div>


</body>
</html>