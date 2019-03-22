<%@ page import="com.mybean.UserBean" %>
<%@ page import="com.dao.ViewUserDao" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/8
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>外包管理平台-ViewEmployees</title>

    <link rel="icon" type="image/png" sizes="96x96" href="../assets/images/icon/ArcSoft_icon.png">
    <link href="../assets/css/main.css" type="text/css" rel="stylesheet">
    <link href="../assets/css/viewEmployees.css" type="text/css" rel="stylesheet">
    <link href="../assets/font-awesome-4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_762060_bvjicjyynld.css" type="text/css" rel="stylesheet">

    <script src="../assets/jQuery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="../assets/jQuery-slimScroll-1.3.8/jquery.slimscroll.js" type="text/javascript"></script>
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
                        <a href="HomePage.jsp" class="">
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
                        <a class="current">
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
                                    <span style="color: #fff">Overview</span>
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
                <div class="panel">
                    <div class="head-title">
                        <h4>Overview of all project information</h4>
                    </div>
                    <div class="tab-content">
                        <div class="tab-panel">
                            <div class="tab-container">
                                <table class="table project-table thead-container">
                                    <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Sex</th>
                                        <th>Email</th>
                                        <th>Birth</th>
                                        <th>Phone</th>
                                        <th>Team</th>
                                        <th>Register</th>
                                    </tr>
                                    </thead>
                                </table>
                                <table class="table project-table tbody-container">
                                    <tbody>
                                    <tr>
                                        <td class="tbody-td">
                                            <div class="table-container">
                                                <div class="scrollbar">
                                                    <table class="table table-project-info">
                                                        <tbody>
                                                        <%
                                                            UserBean userBean = null;
                                                            if (request.getSession().getAttribute("viewEmployeesBean") != null){
                                                                userBean = (UserBean)request.getSession().getAttribute("viewEmployeesBean");
                                                            }
                                                            else {
                                                                ViewUserDao viewUserDao = new ViewUserDao();
                                                                userBean = viewUserDao.viewUser();

                                                                request.getSession().setAttribute("viewEmployeesBean", userBean);
                                                            }
                                                            String viewEmployees[][] = userBean.getUserRecord();
                                                            for (int i = 0;i < userBean.getRowNumber();i++){
                                                                out.print("<tr>");
                                                                for (int j = 0;j < userBean.getColumnNumber();j++){
                                                                    %><input type="hidden" value="<%=viewEmployees[i][j]%>">
                                                                        <td><a class="employee-name"><%=viewEmployees[i][++j]%></a></td>
                                                                        <td>
                                                                            <span class="sex"><%=viewEmployees[i][++j]%></span>
                                                                        </td>
                                                                        <td>
                                                                            <span class="email"><%=viewEmployees[i][++j]%></span>
                                                                        </td>
                                                                        <td>
                                                                            <span class="birth"><%=viewEmployees[i][++j]%></span>
                                                                        </td>
                                                                        <td>
                                                                            <span class="phone"><%=viewEmployees[i][++j]%></span>
                                                                        </td>
                                                                        <td>
                                                                            <a class="team"><%=viewEmployees[i][++j]%></a>
                                                                        </td>
                                                                        <td>
                                                                            <span class="register"><%=viewEmployees[i][++j]%></span>
                                                                        </td>
                                                                <%}
                                                                out.print("</tr>");
                                                            }
                                                        %>
                                                        <tr>
                                                            <input type="hidden" value="1150">
                                                            <td><a class="employee-name">丑团外卖</a></td>
                                                            <td>
                                                                <span class="sex">2018-09-05</span>
                                                            </td>
                                                            <td>
                                                                <span class="email">青果团队</span>
                                                            </td>
                                                            <td>
                                                                <span class="birth">birth</span>
                                                            </td>
                                                            <td>
                                                                <span class="phone">phone</span>
                                                            </td>
                                                            <td>
                                                                <a class="team">Jackson</a>
                                                            </td>
                                                            <td>
                                                                <span class="register">register</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <input type="hidden" value="1230">
                                                            <td><a class="project-name">丑团外卖</a></td>
                                                            <td>
                                                                <span>2018-09-05</span>
                                                            </td>
                                                            <td>
                                                                <span>青果团队</span>
                                                            </td>
                                                            <td>
                                                                <div class="progress">
                                                                    <div class="progressbar" style="width: 60%">
                                                                        <span class="progress-number">60%</span>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <span>Medium</span>
                                                            </td>
                                                            <td>
                                                                <a >Jackson</a>
                                                            </td>
                                                            <td>
                                                                <span class="label label-processing">PROCESSING</span>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <input type="hidden" value="2980">
                                                            <td><a class="project-name">丑团外卖</a></td>
                                                            <td>
                                                                <span>2018-09-05</span>
                                                            </td>
                                                            <td>
                                                                <span>青果团队</span>
                                                            </td>
                                                            <td>
                                                                <div class="progress">
                                                                    <div class="progressbar" style="width: 60%">
                                                                        <span class="progress-number">60%</span>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <span>Medium</span>
                                                            </td>
                                                            <td>
                                                                <a >Jackson</a>
                                                            </td>
                                                            <td>
                                                                <span class="label label-processing">PROCESSING</span>
                                                            </td>
                                                        </tr>

                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
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
        $(".sidebar-scroll,.scrollbar").slimScroll({
            height: "95%"
        })
    })
</script>

<script>
    function getEmployeeInfo() {
        var xhr = getXmlHttpRequest();
        xhr.onreadystatechanges = function () {
            if (xhr.ready == 4){
                if (xhr.status == 200){

                }
            }
        }
        xhr.open("POST","../ViewEmployeesServlet");
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
        xhr.send("");
    }
</script>
</body>
</html>
