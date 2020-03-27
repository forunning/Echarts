<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title> - 空白页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="../css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="../css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/style.css?v=4.1.0" rel="stylesheet">
    <script src="https://cdn.bootcss.com/echarts/4.6.0/echarts.min.js"></script>


</head>

<body class="gray-bg">
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2 class="city">合肥市</h2>
        <ol class="breadcrumb">
            <li>
                <a href="#" class="province">安徽省</a>
            </li>
            <li>
                <strong class="city">合肥市</strong>
            </li>
        </ol>
    </div>
    <div class="col-sm-8">
        <div class="title-action">
            <a href="table_data_tables.jsp" class="btn btn-primary search">查看患者信息</a>
        </div>
    </div>
</div>

<div class="wrapper wrapper-content">
    <div class="row">
        <div class="col-sm-3">
            <div class="ibox">
                <div class="ibox-content">
                    <h5>累计确诊</h5>
                    <h1 class="no-margins diacount"></h1>
                    <div class="stat-percent font-bold text-navy yescount">0<i class="fa fa-bolt"></i></div>
                    <small>昨日</small>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="ibox">
                <div class="ibox-content">
                    <h5>现有确诊</h5>
                    <h1 class="no-margins diatoday">3</h1>
                    <div class="stat-percent font-bold text-navy diathan">0<i class="fa fa-bolt"></i></div>
                    <small>昨日</small>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="ibox">
                <div class="ibox-content">
                    <h5>死亡人数</h5>
                    <h1 class="no-margins dietoday"></h1>
                    <div class="stat-percent font-bold text-danger diethan">0<i class="fa fa-level-down"></i></div>
                    <small>昨日</small>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="ibox">
                <div class="ibox-content">
                    <h5>治愈人数</h5>
                    <h1 class="no-margins curetoday"></h1>
                    <div class="stat-percent font-bold text-navy curethan">0<i class="fa fa-bolt"></i></div>
                    <small>昨日</small>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>最新疫情趋势图</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="graph_flot.html#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="graph_flot.html#">选项1</a>
                            </li>
                            <li><a href="graph_flot.html#">选项2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                    <div id="main" style="width: 100%;height:400px;"></div>
                    <script src="../js/jquery.min.js?v=2.1.4"></script>
                    <script type="text/javascript">

                        function getQueryString(name) {
                            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
                            var r = window.location.search.substr(1).match(reg);
                            if (r != null) return decodeURI(r[2]);
                            return null;
                        }
                        function GetDate() {
                            var dd = new Date();
                            var days=[]
                            for(var i=7;i>0;i--) {
                                dd.setDate(dd.getDate() - 1);//获取AddDayCount天后的日期
                                var y = dd.getFullYear();
                                var m = dd.getMonth() + 1;//获取当前月份的日期
                                var d = dd.getDate();
                                days.push(y + "-" + m + "-" + d);
                            }
                            return days;
                        }
                        var weak=GetDate();

                        $(".city").html(getQueryString('city'));
                        $(".province").html(getQueryString('province'));

                        $(".search").attr("href","table_data_tables.jsp?city="+getQueryString('city'));


                        // 基于准备好的dom，初始化echarts实例
                        var myChart = echarts.init(document.getElementById('main'));

                        var data1=[0, 0, 0, 0, 0, 0, 0],data2=[0, 0, 0, 0, 0, 0, 0];

                        // 指定图表的配置项和数据
                        var option = {

                            tooltip: {
                                trigger: 'axis'
                            },
                            legend: {
                                data: ['当日确诊', '治愈']
                            },
                            grid: {
                                left: '3%',
                                right: '4%',
                                bottom: '3%',
                                containLabel: true
                            },
                            toolbox: {
                                feature: {
                                    saveAsImage: {}
                                }
                            },
                            xAxis: {
                                type: 'category',
                                boundaryGap: false,
                                data: weak
                            },
                            yAxis: {
                                type: 'value'
                            },
                            series: [
                                {
                                    name: '当日确诊',
                                    type: 'line',
                                    data: data1
                                },
                                {
                                    name: '治愈',
                                    type: 'line',
                                    data: data2
                                }
                            ]
                        };


                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);



                        $(function () {
                            $.ajax({
                                type: "POST",
                                url: "${pageContext.request.contextPath}/PatientController/queryChange",
                                data: "city="+getQueryString('city'),
                                success: function (msg) {
                                    var list = msg.list[0];

                                    $(".diacount").html(list.diacount);
                                    $(".diatoday").html(list.diatoday);
                                    $(".dietoday").html(list.dietoday);
                                    $(".curetoday").html(list.curetoday);
                                    $(".yescount").html(list.yescount);
                                    $(".diathan").html(list.diathan);
                                    $(".diethan").html(list.diethan);
                                    $(".curethan").html(list.curethan);

                                }
                            });
                        })
                        $(function () {
                            $.ajax({
                                type: "POST",
                                url: "${pageContext.request.contextPath}/PatientController/queryByTime",
                                data: "city="+getQueryString('city'),
                                success: function (msg) {
                                    var list = msg.list;
                                    data1=[]
                                    data2=[]
                                    for (var i = 0; i < list.length; i++) {
                                        data1.push(list[i].diagonse_count)
                                        data2.push(list[i].cure_count)
                                    }
                                    console.log(data1)
                                    console.log(data2)

                                    var option = {

                                        tooltip: {
                                            trigger: 'axis'
                                        },
                                        legend: {
                                            data: ['当日确诊', '治愈']
                                        },
                                        grid: {
                                            left: '3%',
                                            right: '4%',
                                            bottom: '3%',
                                            containLabel: true
                                        },
                                        toolbox: {
                                            feature: {
                                                saveAsImage: {}
                                            }
                                        },
                                        xAxis: {
                                            type: 'category',
                                            boundaryGap: false,
                                            data: weak
                                        },
                                        yAxis: {
                                            type: 'value'
                                        },
                                        series: [
                                            {
                                                name: '当日确诊',
                                                type: 'line',
                                                data: data1
                                            },
                                            {
                                                name: '治愈',
                                                type: 'line',
                                                data: data2
                                            }
                                        ]
                                    };
                                    myChart.setOption(option);
                                }
                            });
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- 全局js -->
<script src="../js/jquery.min.js?v=2.1.4"></script>
<script src="../js/bootstrap.min.js?v=3.3.6"></script>

<!-- 自定义js -->
<script src="../js/content.js?v=1.0.0"></script>


</body>

</html>
