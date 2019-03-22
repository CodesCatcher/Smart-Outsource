<%@ page import="com.mybean.ProjectBean" %>
<%@ page import="com.dao.ViewProjectDao" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/7
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>外包管理平台-ViewProjects</title>

    <link rel="icon" type="image/png" sizes="96x96" href="../assets/images/icon/ArcSoft_icon.png">
    <link href="../assets/css/main.css" type="text/css" rel="stylesheet">
    <link href="../assets/css/viewProjects.css" type="text/css" rel="stylesheet">
    <link href="../assets/font-awesome-4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">
    <link href="//at.alicdn.com/t/font_762060_905j2m67bm4.css" type="text/css" rel="stylesheet">

    <script src="../assets/jQuery/jquery-3.3.1.js" type="text/javascript"></script>
    <script src="../assets/jQuery-slimScroll-1.3.8/jquery.slimscroll.js" type="text/javascript"></script>
    <script src="../assets/javascript/getXmlHttpRequest.js" type="text/javascript"></script>
    <script src="../assets/javascript/navbar.js" type="text/javascript"></script>
    <script src="../assets/javascript/sidebar.js" type="text/javascript"></script>
    <%--<script src="../assets/javascript/viewProjects.js" type="text/javascript"></script>--%>
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
    <style>
        .ptbutton{
            border: 0px;
            border-radius:6px;
            /*background-image: url("/images/icon/go.png");*/
            color: #fff;
            background: #00aaff;
            width: 150px;
            height: 30px;
            margin-left: 0px;
            box-shadow: 2px 3px 5px rgba(0, 0, 0, 0.08);
        }
        .ptbutton:active{
            background-color: #006ea0;
        }
        .up{
            margin: auto;
        }
        .inputSize{
            width:100px;
            height:30px;
            padding:0px 15px;
            border:1px solid rgba(0, 0, 0, .15);
            border-radius:6px;
            color:#000000;
            letter-spacing:2px;
            font-size:16px;
            background:transparent;
            margin-right: 0px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.08);
        }
        .inputPage{
            width:100px;
            height:30px;
            padding:0px 15px;
            border:1px solid rgba(0, 0, 0, .15);
            border-radius:6px;
            color:#000000;
            letter-spacing:2px;
            font-size:16px;
            background:transparent;
            margin-right: 0px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.08);
        }
        .pageTurn{
            padding: 0 15%;
        }
        .inPage{
            padding: 10px 5%;
            line-height: 1;
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
                        <a class="current">
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
                                    <span style="color: #fff">Overview</span>
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
                                        <th>Project</th>
                                        <th>Create Time</th>
                                        <th>Team</th>
                                        <th>Progress</th>
                                        <th>Type</th>
                                        <th>Manager</th>
                                        <th>Status</th>
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
                                                            ProjectBean projectBean = null;
                                                            if (request.getSession().getAttribute("viewProjectBean") != null){
                                                                projectBean = (ProjectBean)request.getSession().getAttribute("viewProjectBean");
                                                            }
                                                            else {
                                                                ViewProjectDao viewProjectDao = new ViewProjectDao();
                                                                projectBean = viewProjectDao.viewProject();
                                                                request.getSession().setAttribute("viewProjectBean",projectBean);
                                                            }
                                                            String viewProject[][] = projectBean.getProjectRecord();
                                                            request.setCharacterEncoding("UTF-8");
                                                            response.setCharacterEncoding("UTF-8");
                                                            String setCurrentPage = request.getParameter("setCurrentPage");
                                                            int currentPage = 0;
                                                            if (setCurrentPage != null){
                                                                currentPage = Integer.parseInt(setCurrentPage);
                                                                projectBean.setCurrentPage(currentPage);
                                                            }

                                                            String setPageSize = request.getParameter("setPageSize");
                                                            int pageSize = 0;session.setAttribute("pageSize",pageSize);
                                                            if (setPageSize != null){
                                                                pageSize = Integer.parseInt(setPageSize);
                                                                projectBean.setPageSize(pageSize);
                                                                session.setAttribute("pageSize",pageSize);
                                                            }

                                                            int totalRecord = viewProject.length;
                                                            projectBean.setTotalRecord(totalRecord);
                                                            pageSize = projectBean.getPageSize();
                                                            int newPageSize =Integer.parseInt(session.getAttribute("pageSize").toString());
                                                            int totalPages = projectBean.getTotalPages();
                                                            if (totalRecord % pageSize == 0)
                                                                totalPages = totalRecord/pageSize;
                                                            else
                                                                totalPages = totalRecord/pageSize + 1;
                                                            projectBean.setPageSize(pageSize);
                                                            projectBean.setTotalPages(totalPages);
                                                            if (totalPages>=1){
                                                                if (projectBean.getCurrentPage()<1)
                                                                    projectBean.setCurrentPage(projectBean.getTotalPages());
                                                                if (projectBean.getCurrentPage()>projectBean.getTotalPages())
                                                                    projectBean.setCurrentPage(1);
                                                                int index = (projectBean.getCurrentPage()-1)*pageSize;
                                                                int start = index;

                                                            for (int i = index;i < pageSize+index;i++){
                                                                if (i == totalRecord)
                                                                    break;
                                                                String percentage;
                                                                String judge = viewProject[i][6];
                                                                out.print("<tr>");
                                                                for (int j = 0;j < projectBean.getColumnNumber();j++){
                                                                    %><input type="hidden" value="<%=viewProject[i][j]%>">
                                                                    <td><a class="project-name"><%=viewProject[i][++j]%></a></td>
                                                                    <td><span><%=viewProject[i][++j]%></span></td>
                                                                    <td><span><%=viewProject[i][++j]%></span></td>
                                                                    <td>
                                                                        <div class="progress">
                                                                            <%
                                                                                percentage = viewProject[i][++j] + "%";
                                                                            %>
                                                                            <div class="progressbar" style="width: <%=percentage%>">
                                                                                <span class="progress-number"><%=percentage%></span>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                    <td><%
                                                                        String[] type;type = viewProject[i][++j].split(" ");
                                                                    %>
                                                                        <span><%=type[0]%></span>
                                                                    </td>
                                                                    <td>
                                                                        <a><%=viewProject[i][++j]%></a>
                                                                    </td>
                                                                    <td>
                                                                        <span class="label label-<%=viewProject[i][++j]%>"><%=viewProject[i][j]%></span>
                                                                    </td>
                                                            <%    }
                                                            out.print("</tr>");
                                                            }
                                                            }
                                                        %>

                                                        </tbody>
                                                    </table>

                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <center>
                                <br>每页显示<%=projectBean.getPageSize()%>条记录
                                <br>共有<%=projectBean.getTotalRecord()%>条记录
                                <br>当前显示第<font color="blue"><%=projectBean.getCurrentPage()%></font>页,
                                共有<font color="blue"><%=projectBean.getTotalPages()%></font>页</center>

                            <table>
                                <tr align="center" valign="middle">
                                    <td class="pageTurn" >
                                        <form action=" " method="post" >
                                            <input type="hidden" name="setCurrentPage" value="<%= projectBean.getCurrentPage()-1 %>">
                                            <input type="submit" class="ptbutton up" name="pt" value="上一页">
                                        </form>
                                    </td>
                                    <td class="pageTurn">
                                        <form action=" " method="post">
                                            <input type="hidden" name="setCurrentPage" value="<%= projectBean.getCurrentPage()+1 %>">
                                            <input type="submit" class="ptbutton down" name="pt" value="下一页">
                                        </form>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="inPage">
                                        <form action="" method="post">
                                            每页显示<input type="text" class="inputSize" name="setPageSize"  size="3">条记录
                                            <input type="submit" class="ptbutton" name="pt" value="确定">
                                        </form>
                                    </td>
                                    <td class="inPage">
                                        <form action=" " method="post">
                                            输入页码：<input type="text" class="inputPage" name="setCurrentPage" size="2">
                                            <input type="submit" class="ptbutton" name="pt" value="提交" >
                                        </form>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<%
    ProjectBean projectBean1 = null;
    if (request.getSession().getAttribute("projectDetail") != null){
        projectBean = (ProjectBean)request.getSession().getAttribute("projectDetail");
    }
    else {
        AdProjectDao adProjectDao = new AdProjectDao();
        projectBean = adProjectDao.getAdproject();
        request.getSession().setAttribute("adProjectBean",projectBean);
    }
%>--%>
<div class="project-info-container location">
    <div class="project-info-title">
        <span>Project Information</span>
        <a class="cancel"><i class="iconfont icon-cha"></i></a>
    </div>
    <div class="project-info">
        <span class="label-info">Project ID</span>
        <span class="info-box Pid" ></span>
    </div>
    <div class="project-info">
        <span class="label-info">Project Name</span>
        <span class="info-box Pname"></span>
    </div>
    <div class="project-info">
        <span class="label-info" style="background-color: rgba(0,100,130,1);">Create Time</span>
        <span class="info-box PcreateTime" ></span>
    </div>
    <div class="project-info">
        <span class="label-info" style="background-color: rgba(0,100,130,1);">Deadline</span>
        <span class="info-box Pdeadline"></span>
    </div>
    <div class="project-info">
        <span class="label-info">Funds</span>
        <span class="info-box Pfunds"></span>
    </div>
    <div class="project-info">
        <span class="label-info">Team</span>
        <span class="info-box Pteam"></span>
    </div>
    <div class="project-info">
        <span class="label-info" style="background-color: rgba(0,100,130,1);">Progress</span>
        <span class="info-box Progress"></span>
    </div>
    <div class="project-info">
        <span class="label-info" style="background-color: rgba(0,100,130,1);">Security Level</span>
        <span class="info-box Ptype"></span>
    </div>
    <div class="project-info">
        <span class="label-info">Manager</span>
        <span class="info-box Pmanager"></span>
    </div>
    <div class="project-info">
        <span class="label-info">Projects Status</span>
        <span class="info-box Pstatus"></span>
    </div>
</div>
<script>
    var pid = 0;
    $(function () {
        $(".sidebar-scroll,.scrollbar").slimScroll({
            height: "95%"
        })

        //获取项目详细信息

        var $project_info = $(".table-project-info tr");
        var getProjectId = function () {
            pid = $(this).find("input").val();
            $project_info.css("display","block");
        };
        $project_info.on("click",getProjectId);
        $project_info.on("click",getProjectDetail);

        var $cancel = $("a.cancel");
        var $project_info = $(".project-info-container");
        $cancel.click(function () {
            $project_info.css("display","none");
        });


    })
</script>
<script>
    function getProjectDetail() {
        var xhr = getXmlHttpRequest();
        var getDetail;
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4){
                if (xhr.status == 200) {
                    // document.getElementById("test").innerText = xhr.responseText;
                    getDetail = xhr.responseText;
                    var detail = getDetail.split(",");
                    $(".Pid").text(detail[0]);
                    $(".Pname").text(detail[1]);
                    $(".PcreateTime").text(detail[2]);
                    $(".Pdeadline").text(detail[3]);
                    $(".Pfunds").text(detail[4]);
                    $(".Pteam").text(detail[5]);
                    $(".Progress").text(detail[6]);
                    $(".Ptype").text((detail[7].split(" "))[0]);
                    $(".Pmanager").text(detail[8]);
                    $(".Pstatus").text(detail[9]);
                }
            }
        };
        xhr.open("POST","../GetProjectDetailServlet");
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
        xhr.send("pid="+pid);
    }

    function viewProjects() {
        var xhr = getXmlHttpRequest();
        xhr.onreadystatechanges = function () {
            if (xhr.ready == 4){
                if (xhr.status == 200){

                }
            }
        };
        xhr.open("POST","../ViewProjectServlet");
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
        xhr.send("");
    }

</script>
<script>
    window.onload = function () {
        viewProjects();
    }
</script>
</body>
</html>
