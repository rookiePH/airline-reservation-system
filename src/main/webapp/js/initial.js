
$(function () {
    $("#findticket").on('click',function () {
        var flightinfo = { };

        flightinfo.flighttype = $('#flighttype').val(),
        flightinfo.stacity = $('#stacity').val(),
        flightinfo.tarrcity = $('#tarrcity').val(),
      /*  flightinfo.depaturetime = $('#depaturetime').val()*/

        $.ajax({
            url:"/seekTicket",
            data:JSON.stringify(flightinfo),
            dataType:"json",
            contentType:"application/json",
            type:"POST",
            success:function (data) {
                alert("123");
                alert(data.data);

                var arr = data;
                $.each(arr,function (i,n) {
                    $("#result").append(
                        "<div class='showResult' style='width: 10%;height: 10%;border: 1px'>"+
                        n.flighttype+","+n. stacity+","+n.tarrcity +","+n.depaturetime+"</div>"
                    )
                })
            }
        })

    })

})