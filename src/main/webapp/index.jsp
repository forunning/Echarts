<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/25 0025
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title> hAdmin- 主页</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <!--<i class="fa fa-area-chart"></i>-->
                                        <strong class="font-bold">疫情大数据分析</strong>
                                    </span>
                                </span>
                        </a>
                    </div>
                    <div class="logo-element">
                        <i class="fa fa-area-chart"></i>
                    </div>
                </li>
                <li>
                    <a class="J_menuItem" href="index_v1.jsp">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">国内时事报告</span>
                    </a>
                </li>
                <li>
                    <a class="J_menuItem" href="map.jsp?json=neimeng&province=内蒙古自治区">
                        <i class="fa fa fa-bar-chart-o"></i>
                        <span class="nav-label">内蒙古自治区</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=呼尔浩特市">呼和浩特市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=包头市">包头市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=赤峰市">赤峰市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=通辽市">通辽市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=鄂尔多斯市">鄂尔多斯市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=兴安盟">兴安盟</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=锡林郭勒盟">锡林郭勒盟</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="page/district.jsp?province=内蒙古自治区&city=阿拉善盟">阿拉善盟</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a class="J_menuItem" href="map.jsp?json=guangxi&province=广西壮族自治区">
                        <i class="fa fa fa-bar-chart-o"></i>
                        <span class="nav-label">广西壮族自治区</span>
                        <span class="fa arrow"></span>
                    </a>
<%--                    :南宁市、柳州市、桂林市、梧州市、北海市、防城港市、钦州市、贵港市、玉林市、百色市、贺州市、河池市、来宾市、崇左市。--%>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="page/district.jsp">南宁市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">柳州市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">桂林市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">梧州市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">北海市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">防城港市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">钦州市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">贵港市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">玉林市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">百色市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">贺州市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">河池市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">来宾市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">崇左市</a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a class="J_menuItem" href="map.jsp?json=xizang&province=西藏自治区">
                        <i class="fa fa fa-bar-chart-o"></i>
                        <span class="nav-label">西藏自治区</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="page/district.jsp">拉萨市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">日喀则市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">昌都市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">林芝市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">山南市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">那曲市</a>
                        </li>
                        <li>
                            <a class="J_menuItem" href="graph_flot.html">阿里地区</a>
                        </li>
                    </ul>
                </li>

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                        <div class="form-group">
                            <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope"></i> <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li class="m-t-xs">
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a7.jpg">
                                    </a>
                                    <div class="media-body">
                                        <small class="pull-right">46小时前</small>
                                        <strong>小四</strong> 是不是只有我死了,你们才不骂爵迹
                                        <br>
                                        <small class="text-muted">3天前 2014.11.8</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="dropdown-messages-box">
                                    <a href="profile.html" class="pull-left">
                                        <img alt="image" class="img-circle" src="img/a4.jpg">
                                    </a>
                                    <div class="media-body ">
                                        <small class="pull-right text-navy">25小时前</small>
                                        <strong>二愣子</strong> 呵呵
                                        <br>
                                        <small class="text-muted">昨天</small>
                                    </div>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="mailbox.html">
                                        <i class="fa fa-envelope"></i> <strong> 查看所有消息</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell"></i> <span class="label label-primary">8</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="mailbox.html">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> 您有16条未读消息
                                        <span class="pull-right text-muted small">4分钟前</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="profile.html">
                                    <div>
                                        <i class="fa fa-qq fa-fw"></i> 3条新回复
                                        <span class="pull-right text-muted small">12分钟钱</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="notifications.html">
                                        <strong>查看所有 </strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe id="J_iframe" width="100%" height="100%" src="index_v1.jsp?v=4.0" frameborder="0" data-id="index_v1.jsp" seamless></iframe>
        </div>
    </div>
    <!--右侧部分结束-->
</div>

<!-- 全局js -->
<script src="js/jquery.min.js?v=2.1.4"></script>
<script src="js/bootstrap.min.js?v=3.3.6"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="js/hAdmin.js?v=4.1.0"></script>
<script type="text/javascript" src="js/index.js"></script>

<!-- 第三方插件 -->
<script src="js/plugins/pace/pace.min.js"></script>

</body>

</html>

