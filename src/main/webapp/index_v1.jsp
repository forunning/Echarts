<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/25 0025
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--360浏览器优先以webkit内核解析-->


    <title> - 主页示例</title>

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/echarts/4.6.0/echarts.min.js"></script>
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">

    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 100%;height:700px;"></div>

    <script type="text/javascript">

        $(function () {
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));

            myChart.showLoading();

            $.get("json/zhongguo.json", function (geoJson) {

                myChart.hideLoading();

                echarts.registerMap('HK', geoJson);

                myChart.setOption(option = {

                    tooltip: {
                        trigger: 'item',
                        formatter: '{b}<br/>{c} (p / km2)'
                    },
                    toolbox: {
                        show: true,
                        orient: 'vertical',
                        left: 'right',
                        top: 'center',
                        feature: {
                            dataView: {readOnly: false},
                            restore: {},
                            saveAsImage: {}
                        }
                    },
                    visualMap: {
                        min: 0,
                        max: 50,
                        text: ['High', 'Low'],
                        realtime: false,
                        calculable: true,
                        inRange: {
                            color: ['lightskyblue', 'yellow', 'orangered']
                        }
                    },
                    series: [
                        {
                            name: '香港18区人口密度',
                            type: 'map',
                            mapType: 'HK', // 自定义扩展图表类型
                            label: {
                                show: true
                            },
                            data: [],

                        }
                    ]
                });
            });



            var datas = "[";

            /*使用ajax,获取后台数据*/
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/PatientController/queryStaticInfo",
                success: function(msg){
                    var list = msg.list;
                    for(var i=0;i<list.length;i++){
                        datas = datas + "{\"name\": \""+list[i].province+"\", \"value\": "+list[i].count+"}";
                        if(i != (list.length - 1)){
                            datas = datas + ",";
                        }
                    }
                    datas = datas + "]";
                    console.log(datas + "================");
                    datas = JSON.parse(datas);
                    myChart.setOption(option = {

                        tooltip: {
                            trigger: 'item',
                            formatter: '{b}<br/>{c} (p / km2)'
                        },
                        toolbox: {
                            show: true,
                            orient: 'vertical',
                            left: 'right',
                            top: 'center',
                            feature: {
                                dataView: {readOnly: false},
                                restore: {},
                                saveAsImage: {}
                            }
                        },
                        visualMap: {
                            min: 0,
                            max: 50,
                            text: ['High', 'Low'],
                            realtime: false,
                            calculable: true,
                            inRange: {
                                color: ['lightskyblue', 'yellow', 'orangered']
                            }
                        },
                        series: [
                            {
                                name: '香港18区人口密度',
                                type: 'map',
                                mapType: 'HK', // 自定义扩展图表类型
                                label: {
                                    show: true
                                },
                                data: datas,

                            }
                        ]
                    });
                }
            });




            myChart.resize();



        })





    </script>

</div>
</body>
</html>
