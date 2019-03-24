<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2018/11/1
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        var isSort = [false,false,false];//标记是否排过序
        function sortTable (colNo) {
            var rowsArray = [];//表格中所有行的集合
            var colsArray = [];//表格中所有列的集合
            var tbody = document.getElementsByTagName('tbody')[0];
            //初始化行和列
            for (var i = 0; i < tbody.rows.length; i++) {
                rowsArray[i] = tbody.rows[i];
                colsArray[i] = rowsArray[i].cells[colNo];
                console.log(typeof(colsArray[i]));
            }
            //排序
            console.log(isSort[colNo])
            if (!isSort[colNo]) {//isSort为false时，降序排列
                isSort[colNo] = true;
                colsArray.sort(function (a,b) {
                    return b.innerHTML - a.innerHTML;//将被点的那一列降序排序
                });
            }else{
                //此时已经降序排序过了，对数组逆序即可
                colsArray.reverse();
                isSort[colNo] = false;
            }
            for (var i = 0; i < tbody.rows.length; i++) {
                console.log(rowsArray[i]);
            }
            //当某一列排序后将表格所有元素的值放到新的数组中
            var rowsTempArray = [];
            for (var i = 0; i < rowsArray.length; i++) {
                var colsTempArray = [];
                for (var j = 0; j < colsArray.length; j++) {
                    //将i行的所有列的内容保存在colsTempArray[j]中
                    colsTempArray[j] = colsArray[i].parentNode.cells[j].innerHTML;;
                }
                //将一行内容保存到rowsTempArray。
                rowsTempArray[i] = colsTempArray;
            }
            //重绘页面
            for (var i = 0; i < rowsArray.length; i++) {
                for (var j = 0; j < colsArray.length; j++) {
                    rowsArray[i].cells[j].innerHTML = rowsTempArray[i][j];
                }
            }
        }
    </script>

</head>
<body>
<body>
<table id="table" cellpadding="1" cellspacing="1">
    <thead>
    <tr bgcolor="grey">
        <th>姓名</th>
        <th onclick="sortTable(1)">力量</th>
        <th onclick="sortTable(2)">敏捷</th>
        <th onclick="sortTable(3)">智力</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>德鲁伊</th>
        <th>17</th>
        <th>24</th>
        <th>13</th>
    </tr>
    <tr>
        <th>月之骑士</th>
        <th>15</th>
        <th>22</th>
        <th>16</th>
    </tr>
    <tr>
        <th>众神归王</th>
        <th>19</th>
        <th>35</th>
        <th>20</th>
    </tr>
    <tr>
        <th>流浪剑客</th>
        <th>23</th>
        <th>15</th>
        <th>14</th>
    </tr>
    </tbody>
</table>


</body>

</body>
</html>
