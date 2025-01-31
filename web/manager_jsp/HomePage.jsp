<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/8
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>外包管理平台-Dashboard</title>

    <link rel="icon" type="image/png" sizes="96x96" href="../assets/images/icon/ArcSoft_icon.png">
    <link href="../assets/css/main.css" type="text/css" rel="stylesheet">
    <link href="../assets/css/homepage.css" type="text/css" rel="stylesheet">
    <link href="../assets/chartist-js-develop/dist/chartist.css" type="text/css" rel="stylesheet">
    <link href="../assets/font-awesome-4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_762060_905j2m67bm4.css" type="text/css" rel="stylesheet">

    <script src="../assets/jQuery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="../assets/jQuery-slimScroll-1.3.8/jquery.slimscroll.js" type="text/javascript"></script>
    <script src="../assets/chartist-js-develop/dist/chartist.js" type="text/javascript"></script>
    <script src="../assets/javascript/navbar.js" type="text/javascript"></script>
    <script src="../assets/javascript/sidebar.js" type="text/javascript"></script>
    <style>
        .iconfont{
            font-size: 24px;
            vertical-align: middle;
        }
        .icon-jiantouzuo{
            color: rgba(120,120,120,1);
        }
        .icon-lingdang{
            font-size: 22px;
            font-weight: 500;
        }
        .icon-jiantou2{
            font-size: 15px;
        }
        .icon-ziyuan{
            font-size: 14px;
            margin-right: 5px;
        }
        .icon-youjian{
            font-size: 14px;
            margin-right: 8px;
        }
        .page-nav .iconfont{
            font-size: 18px;
            color: #AEB7C2;
            margin-right: 10px;
        }
        .page-nav .icon-jiantou2{
            font-size: 14px;
            position: relative;
            margin: 0;
            display: inline-block;
            float: right;
            line-height: 1.5;
        }
        .page-nav .icon-biaoji{
            font-size: 15px;
        }

        .fa{
        }
        .fa-sign-out{
            color: #fff;
            font-size: 20px;
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div id="container">
    <nav class="navbar">
        <div class="brand">
            <a href="http://www.arcsoft.com.cn/" target="_blank"><img src="../assets/images/logo/ArcSoft.png" alt="ArcSoft" class="brand-img logo"></a>
        </div>
        <div class="navbar-container-fluid">
            <div class="navbar-btn">
                <button class="btn-toggle"><i class="iconfont icon-jiantouzuo"></i></button>
            </div>
            <form class="navbar-form">
                <div class="input-group">
                    <input type="text"
                           class="input-control"
                           placeholder="Search...">
                    <span class="input-group-btn">
                            <button type="button" class="btn input-btn">Go</button>
                        </span>
                </div>
            </form>
            <div class="navbar-logout">
                <a class="btn-logout"><i class="fa fa-sign-out"></i><span>SIGN OUT</span></a>
            </div>
            <div class="navbar-menu">
                <ul class="navbar-nav">
                    <li class="navbar-dropdown navbar-dropdown-notifications">
                        <a href="javascript:" class="dropdown-toggle notifications-toggle">
                            <i class="iconfont icon-lingdang"></i>
                            <span class="notice bg-danger">5</span>
                        </a>
                        <ul class="navbar-dropdown-menu notifications-menu">
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-danger"></span>
                                    System space is almost full
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-success"></span>
                                    You have 9 unfinished tasks
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-success"></span>
                                    Monthly report is available
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-warning"></span>
                                    Weekly meeting in 1 hour
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="notifications">
                                    <span class="dot bg-danger"></span>
                                    Your request has been approved,you can try again
                                </a>
                            </li>
                            <li class="more">
                                <a href="javascript:" class="more-notifications">
                                    See all notifications
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="navbar-dropdown">
                        <a href="javascript:" class="dropdown-toggle help-toggle">
                            <i class="iconfont icon-bangzhu"></i>
                            <span>Help</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="navbar-dropdown-menu help-menu">
                            <li>
                                <a href="javascript:" class="help">
                                    Basic Use
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="help">
                                    Working With Data
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="help">
                                    Troubleshooting
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="navbar-dropdown">
                        <a href="javascript:" class="dropdown-toggle person-toggle">
                            <img src="../assets/images/profile_photos/bear.png">
                            <span>Jackson</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="navbar-dropdown-menu person-menu">
                            <li>
                                <a href="javascript:" class="person">
                                    <i class="iconfont icon-ziyuan"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:" class="person">
                                    <i class="iconfont icon-youjian"></i>
                                    <span>Message</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="page-nav">
                    <li>
                        <a href="HomePage.jsp" class="active current">
                            <i class="iconfont icon-home"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a href="Charts.jsp" class="">
                            <i class="iconfont icon-tubiao"></i>
                            <span>Charts</span>
                        </a>
                    </li>
                    <li class="sidebar-dropdown">
                        <a class="">
                            <i class="iconfont icon-xiangmu"></i>
                            <span>Projects</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="sidebar-dropdown-menu">
                            <li>
                                <a href="Establish.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Establish</span>
                                </a>
                            </li>
                            <li>
                                <a href="ViewProjects.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Overview</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-dropdown">
                        <a class="">
                            <i class="iconfont icon-renyuan"></i>
                            <span>Employees</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="sidebar-dropdown-menu">
                            <li>
                                <a href="Additions.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Additions</span>
                                </a>
                            </li>
                            <li>
                                <a href="ViewEmployees.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Overview</span>
                                </a>
                            </li>
                            <li>
                                <a href="Authorization.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Authorization</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Notifications.jsp" class="">
                            <i class="iconfont icon-lingdang"></i>
                            <span>Notifications</span>
                        </a>
                    </li>
                    <li class="sidebar-dropdown">
                        <a class="">
                            <i class="iconfont icon-shezhi"></i>
                            <span>Settings</span>
                            <i class="iconfont icon-jiantou2"></i>
                        </a>
                        <ul class="sidebar-dropdown-menu">
                            <li>
                                <a href="Account.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Account</span>
                                </a>
                            </li>
                            <li>
                                <a href="Password.jsp">
                                    <i class="iconfont icon-biaoji"></i>
                                    <span>Password</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="Companies.jsp" class="">
                            <i class="iconfont icon-gongsi1"></i>
                            <span>Companies</span>
                        </a>
                    </li>
                    <li>
                        <a href="Administrator.jsp" class="">
                            <i class="iconfont icon-guanliyuan"></i>
                            <span>Administrators</span>
                        </a>
                    </li>

                </ul>
            </nav>
        </div>
    </div>
    <div class="main">
        <div class="main-content">
            <div class="container-fluid">
                <div class="panel panel-headline">
                    <div class="panel-heading">
                        <h3 class="overview-title">Weekly Overview</h3>
                        <p class="panel-subtitle">Period: Aug 27 - Sep 02,The thirty-fifth week of 2018</p>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="metric">
                                        <span class="icon">
                                            <i class="iconfont icon-zhuce"></i>
                                        </span>
                                    <p>
                                        <span class="number">25</span>
                                        <span class="title">Registrants</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="metric">
                                        <span class="icon">
                                            <i class="iconfont icon-fachu"></i>
                                        </span>
                                    <p>
                                        <span class="number">125</span>
                                        <span class="title">Sends</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="metric">
                                        <span class="icon">
                                            <i class="iconfont icon-fabaochengbao"></i>
                                        </span>
                                    <p>
                                        <span class="number">89</span>
                                        <span class="title">Receives</span>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="metric">
                                        <span class="icon">
                                            <i class="iconfont icon-wancheng"></i>
                                        </span>
                                    <p>
                                        <span class="number">88</span>
                                        <span>Completes</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-9">
                                <div id="headline-chart" class="headline-chart"></div>
                            </div>
                            <div class="col-md-1">
                                <div class="explain">
                                    <span class="send"></span>sends
                                    <span class="receive"></span>receives
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="weekly-summary">
                                    <span class="number">254</span>
                                    <span class="percentage"><i class="iconfont icon-xiajiang"></i>12%</span>
                                    <span class="info-label">Sends</span>
                                </div>
                                <div class="weekly-summary">
                                    <span class="number">325</span>
                                    <span class="percentage"><i class="iconfont icon-shangsheng"></i>31%</span>
                                    <span class="info-label">Receives</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Recently registered personnel</h3>
                                <div class="right">
                                    <button type="button" class="btn-toggle-collapse">
                                        <i class="iconfont icon-xiangshangjiantouarrowup-copy"></i>
                                    </button>
                                    <button type="button" class="btn-remove">
                                        <i class="iconfont icon-cha"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="panel-body no-padding">
                                <table class="table table-employee">
                                    <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Name</th>
                                        <th>Team</th>
                                        <th>Date&Time</th>
                                        <th>Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a>17005</a></td>
                                        <td>Steve</td>
                                        <td>18001</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-online">on-line</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>17004</a></td>
                                        <td>Steve</td>
                                        <td>18001</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-offline">off-line</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>17004</a></td>
                                        <td>Steve</td>
                                        <td>18001</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-online">on-line</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>17004</a></td>
                                        <td>Steve</td>
                                        <td>18001</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-offline">off-line</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>17004</a></td>
                                        <td>Steve</td>
                                        <td>18001</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-offline">off-line</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-md-6">
                                            <span class="panel-note">
                                                <i class="iconfont icon-shijianlishijilujishizhongbiaoxianxing"></i>
                                                <span>Last three days</span>
                                            </span>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        <a class="btn panel-footer-btn">View all registrations</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Recently released project</h3>
                                <div class="right">
                                    <button type="button" class="btn-toggle-collapse">
                                        <i class="iconfont icon-xiangshangjiantouarrowup-copy"></i>
                                    </button>
                                    <button type="button" class="btn-remove">
                                        <i class="iconfont icon-cha"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="panel-body no-padding">
                                <table class="table table-employee">
                                    <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Project</th>
                                        <th>Funds</th>
                                        <th>Date&Time</th>
                                        <th>Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><a>18005</a></td>
                                        <td>土包子</td>
                                        <td>25000</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-online">already</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>18004</a></td>
                                        <td>泳池</td>
                                        <td>100000</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-offline">not yet</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>18004</a></td>
                                        <td>全民健身中心</td>
                                        <td>70000</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-online">already</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>18004</a></td>
                                        <td>丑团外卖</td>
                                        <td>86000</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-offline">not yet</span></td>
                                    </tr>
                                    <tr>
                                        <td><a>18004</a></td>
                                        <td>冰库</td>
                                        <td>45000</td>
                                        <td>2018-9-1</td>
                                        <td><span class="label label-offline">not yet</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="panel-footer">
                                <div class="row">
                                    <div class="col-md-6">
                                            <span class="panel-note">
                                                <i class="iconfont icon-shijianlishijilujishizhongbiaoxianxing"></i>
                                                <span>Last three days</span>
                                            </span>
                                    </div>
                                    <div class="col-md-6 text-right">
                                        <a class="btn panel-footer-btn">View all projects</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $(".sidebar-scroll").slimScroll({
            height: "95%"
        })

        var data, options;

        // headline charts
        data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
                [3, 9, 4, 6, 5, 4, 8],
                [4, 5, 8, 4, 9, 8, 6]
            ]
        };

        options = {
            height: 300,
            showArea: true,
            showLine: false,
            showPoint: true,
            fullWidth: true,
            axisX: {
                showGrid: false
            },
            lineSmooth: false,
        };

        new Chartist.Line('.headline-chart', data, options);


        // visits trend charts
        data = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            series: [{
                name: 'series-real',
                data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
            }, {
                name: 'series-projection',
                data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
            }]
        };

        options = {
            fullWidth: true,
            lineSmooth: false,
            height: "270px",
            low: 0,
            high: 'auto',
            series: {
                'series-projection': {
                    showArea: true,
                    showPoint: false,
                    showLine: false
                },
            },
            axisX: {
                showGrid: false,

            },
            axisY: {
                showGrid: false,
                onlyInteger: true,
                offset: 0,
            },
            chartPadding: {
                left: 20,
                right: 20
            }
        };

        new Chartist.Line('#visits-trends-chart', data, options);


        // visits chart
        data = {
            labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
            series: [
                [6384, 6342, 5437, 2764, 3958, 5068, 7654]
            ]
        };

        options = {
            height: 300,
            axisX: {
                showGrid: false
            },
        };

        new Chartist.Bar('#visits-chart', data, options);


        // real-time pie chart
        var sysLoad = $('#system-load').easyPieChart({
            size: 130,
            barColor: function(percent) {
                return "rgb(" + Math.round(200 * percent / 100) + ", " + Math.round(200 * (1.1 - percent / 100)) + ", 0)";
            },
            trackColor: 'rgba(245, 245, 245, 0.8)',
            scaleColor: false,
            lineWidth: 5,
            lineCap: "square",
            animate: 800
        });

        var updateInterval = 3000; // in milliseconds

        setInterval(function() {
            var randomVal;
            randomVal = getRandomInt(0, 100);

            sysLoad.data('easyPieChart').update(randomVal);
            sysLoad.find('.percent').text(randomVal);
        }, updateInterval);

        function getRandomInt(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

    })


</script>
</body>
</html>
