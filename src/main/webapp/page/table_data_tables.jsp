<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/25 0025
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 数据表格</title>
    <meta name="keywords" content="">
    <meta name="description" content="">


    <link href="../css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- Data Tables -->
    <link href="../css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css?v=4.1.0" rel="stylesheet">

    <!-- 全局js -->
    <script src="../js/jquery.min.js?v=2.1.4"></script>
    <script>
        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return decodeURI(r[2]);
            return null;
        }



        $(function () {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/PatientController/queryByDistrict",
                data: "city="+getQueryString('city'),
                success: function(msg){
                    var list = msg.list;
                    var databody = "";
                    for (var i=0;i<list.length;i++){

                        var state = "";
                        var pstate = list[i].patient_state;
                        if(pstate == 1 ){
                            state = "确诊";
                        }else if(pstate == 2 ){
                            state = "治愈";
                        }else if(pstate == 3 ){
                            state = "重症";
                        }else if(pstate == 4 ){
                            state = "死亡";
                        }

                        databody = databody + "<tr class=\"gradeX\">\n" +
                            "                                <td>"+i+"</td>\n" +
                            "                                <td>"+list[i].district+"</td>\n" +
                            "                                <td>"+list[i].patient_name+"</td>\n" +
                            "                                <td class=\"center\">"+list[i].patient_tel+"</td>\n" +
                            "                                <td class=\"center\">"+state+"</td>\n" +
                            "                            </tr>";

                    }
                    $("#dataBody").html(databody);

                }
            });
        })
    </script>

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>患者信息</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="table_data_tables.html#">选项1</a>
                            </li>
                            <li><a href="table_data_tables.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">

                    <table class="table table-striped table-bordered table-hover dataTables-example">
                        <thead>
                        <tr>
                            <th>序号</th>
                            <th>地区</th>
                            <th>患者名</th>
                            <th>联系方式</th>
                            <th>患者状态</th>
                        </tr>
                        </thead>
                        <tbody id="dataBody">

                        </tbody>
                        <tfoot>
                        <tr>
                            <th>序号</th>
                            <th>地区</th>
                            <th>患者名</th>
                            <th>联系方式</th>
                            <th>患者状态</th>
                        </tr>
                        </tfoot>
                    </table>

                </div>
            </div>
        </div>
    </div>

</div>


<script src="../js/bootstrap.min.js?v=3.3.6"></script>



<script src="../js/plugins/jeditable/jquery.jeditable.js"></script>

<!-- Data Tables -->
<script src="../js/plugins/dataTables/jquery.dataTables.js"></script>
<script src="../js/plugins/dataTables/dataTables.bootstrap.js"></script>

<!-- 自定义js -->
<script src="../js/content.js?v=1.0.0"></script>


<!-- Page-Level Scripts -->
<script>
    $(document).ready(function () {
        $('.dataTables-example').dataTable();

        /* Init DataTables */
        var oTable = $('#editable').dataTable();

        /* Apply the jEditable handlers to the table */
        oTable.$('td').editable('../example_ajax.php', {
            "callback": function (sValue, y) {
                var aPos = oTable.fnGetPosition(this);
                oTable.fnUpdate(sValue, aPos[0], aPos[1]);
            },
            "submitdata": function (value, settings) {
                return {
                    "row_id": this.parentNode.getAttribute('id'),
                    "column": oTable.fnGetPosition(this)[2]
                };
            },

            "width": "90%",
            "height": "100%"
        });


    });

    function fnClickAddRow() {
        $('#editable').dataTable().fnAddData([
            "Custom row",
            "New row",
            "New row",
            "New row",
            "New row"]);

    }
</script>




</body>

</html>
