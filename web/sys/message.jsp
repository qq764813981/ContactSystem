<%@ page import="com.cxspace.service.impl.MessageService" %>
<%@ page import="com.cxspace.entity.Message" %>
<%@ page import="com.cxspace.bean.PageBean" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(session.getAttribute("loginAdmin")==null)
    {
        response.sendRedirect(request.getContextPath()+"/sys/login.jsp");
    }
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>管理留言信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/loader-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/sys/assets/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/sys/assets/js/progress-bar/number-pb.css">


    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QXwuA2Zi8h3huVQvqVrW2MhU"></script>

    <style type="text/css">
        canvas#canvas4 {
            position: relative;
            top: 20px;
        }
    </style>




    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/sys/assets/ico/minus.png">
</head>

<body>
<!-- Preloader -->
<div id="preloader">
    <div id="status">&nbsp;</div>
</div>
<!-- TOP NAVBAR -->
<nav role="navigation" class="navbar navbar-static-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="entypo-menu"></span>
            </button>
            <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                <span class="entypo-list-add"></span>
            </button>


            <div id="logo-mobile" class="visible-xs">
                <h1>WEB管理<span>v1.2</span></h1>
            </div>

        </div>


        <!-- Collect the nav links, forms, and other content for toggling -->
        <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">

                <li class="dropdown">


                    <!--
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i style="font-size:20px;" class="icon-conversation"></i><div class="noft-red">23</div></a>

                    <!--

                 <ul style="margin: 11px 0 0 9px;" role="menu" class="dropdown-menu dropdown-wrap">


                     <li>
                         <a href="#">
                             <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/1.jpg">Jhon Doe <b>Just Now</b>
                         </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                         <a href="#">
                             <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/women/1.jpg">Jeniffer <b>3 Min Ago</b>
                         </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                         <a href="#">
                             <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/2.jpg">Dave <b>2 Hours Ago</b>
                         </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                         <a href="#">
                             <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/3.jpg"><i>Keanu</i>  <b>1 Day Ago</b>
                         </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                         <a href="#">
                             <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/4.jpg"><i>Masashi</i>  <b>2 Mounth Ago</b>
                         </a>
                     </li>
                     <li class="divider"></li>
                     <li>
                         <div>See All Messege</div>
                     </li>



              </ul>
          -->

                </li>
                <li>

                    <!--
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i style="font-size:19px;" class="icon-warning tooltitle"></i><div class="noft-green">5</div></a>

                    <!--
                    <ul style="margin: 12px 0 0 0;" role="menu" class="dropdown-menu dropdown-wrap">
                        <li>
                            <a href="#">
                                <span style="background:#DF2135" class="noft-icon maki-bus"></span><i>From Station</i>  <b>01B</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#AB6DB0" class="noft-icon maki-ferry"></span><i>Departing at</i>  <b>9:00 AM</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#FFA200" class="noft-icon maki-aboveground-rail"></span><i>Delay for</i>  <b>09 Min</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#86C440" class="noft-icon maki-airport"></span><i>Take of</i>  <b>08:30 AM</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <span style="background:#0DB8DF" class="noft-icon maki-bicycle"></span><i>Take of</i>  <b>08:30 AM</b>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div>See All Notification</div>
                        </li>
                    </ul>
                    -->

                </li>
                <li><a href="#"><i data-toggle="tooltip" data-placement="bottom" title="帮助" style="font-size:20px;" class="icon-help tooltitle"></i></a>
                </li>

            </ul>

            <!--

            <div id="nt-title-container" class="navbar-left running-text visible-lg">

               <!--

                <ul class="date-top">
                    <li class="entypo-calendar" style="margin-right:5px"></li>
                    <li id="Date"></li>


                </ul>

                -->

            <!--
            <ul id="digital-clock" class="digital">
                <li class="entypo-clock" style="margin-right:5px"></li>
                <li class="hour"></li>
                <li>:</li>
                <li class="min"></li>
                <li>:</li>
                <li class="sec"></li>
                <li class="meridiem"></li>
            </ul>
            -->

            <!--
            <ul id="nt-title">
                <li><i class="wi-day-lightning"></i>&#160;&#160;Berlin&#160;
                    <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                </li>
                <li><i class="wi-day-lightning"></i>&#160;&#160;Yogyakarta&#160;
                    <b>85</b><i class="wi-fahrenheit"></i>&#160;; Tonight- 72 °F (22.2 °C)
                </li>

                <li><i class="wi-day-lightning"></i>&#160;&#160;Sttugart&#160;
                    <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                </li>

                <li><i class="wi-day-lightning"></i>&#160;&#160;Muchen&#160;
                    <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                </li>

                <li><i class="wi-day-lightning"></i>&#160;&#160;Frankurt&#160;
                    <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                </li>

            </ul>

        </div>
            -->


            <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <img alt="" class="admin-pic img-circle" src="${pageContext.request.contextPath}/sys/assets/img/logo.jpg">欢迎您!管理员用户. <b class="caret"></b>
                    </a>
                    <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/AdminLoginOutServlet">
                                <span class="entypo-user"></span>&#160;&#160;退出登录.</a>
                        </li>
                        <!--

                                       <li>
                                           <a href="#">
                                               <span class="entypo-vcard"></span>&#160;&#160;Account Setting</a>
                                       </li>
                                       <li>
                                           <a href="#">
                                               <span class="entypo-lifebuoy"></span>&#160;&#160;帮助</a>
                                       </li>
                                       <li class="divider"></li>
                                       <li>
                                           <a href="http://themeforest.net/item/apricot-navigation-admin-dashboard-template/7664475?WT.ac=category_item&WT.z_author=themesmile">
                                               <span class="entypo-basket"></span>&#160;&#160; Purchase</a>
                                       </li>
                        -->

                    </ul>
                </li>
                <li>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="icon-gear"></span>&#160;&#160;设置背景色</a>
                    <ul role="menu" class="dropdown-setting dropdown-menu">

                        <li class="theme-bg">
                            <div id="button-bg"></div>
                            <div id="button-bg2"></div>
                            <div id="button-bg3"></div>
                            <div id="button-bg5"></div>
                            <div id="button-bg6"></div>
                            <div id="button-bg7"></div>
                            <div id="button-bg8"></div>
                            <div id="button-bg9"></div>
                            <div id="button-bg10"></div>
                            <div id="button-bg11"></div>
                            <div id="button-bg12"></div>
                            <div id="button-bg13"></div>
                        </li>
                    </ul>
                </li>

                <!--

                <li class="hidden-xs">
                    <a class="toggle-left" href="#">
                        <span style="font-size:20px;" class="entypo-list-add"></span>
                    </a>
                </li>
                -->

            </ul>

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

<!-- /END OF TOP NAVBAR -->

<!-- SIDE MENU -->
<div id="skin-select">
    <div id="logo">
        <h1>高三（1）班通讯录后台管理系统<span>v0.1</span></h1>
    </div>

    <a id="toggle">
        <span class="entypo-menu"></span>
    </a>
    <div class="dark">
        <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="搜索目录..." autofocus="">
                </span>
        </form>
    </div>

    <div class="search-hover">
        <form id="demo-2">
            <input type="search" placeholder="Search Menu..." class="id_search">
        </form>
    </div>




    <div class="skin-part">
        <div id="tree-wrap">
            <div class="side-bar">

                <ul class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                            <span class="widget-menu"></span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                        </a>
                    </li>
                    <!--
                                          <li>


                                              <a class="tooltip-tip ajax-load" href="#" title="Blog App">
                                                  <i class="icon-document-edit"></i>
                                                  <span>Blog App</span>

                                              </a>

                                              <ul>
                                                  <li>
                                                      <a class="tooltip-tip2 ajax-load" href="blog-list.html" title="Blog List"><i class="entypo-doc-text"></i><span>Blog List</span></a>
                                                  </li>
                                                  <li>
                                                      <a class="tooltip-tip2 ajax-load" href="blog-detail.html" title="Blog Detail"><i class="entypo-newspaper"></i><span>Blog Details</span></a>
                                                  </li>
                                              </ul>


                    </li>
                          -->

                    <li>
                        <a class="tooltip-tip ajax-load" href="${pageContext.request.contextPath}/sys/index.jsp" title="主页">
                            <i class="icon-view-thumb"></i>
                            <span>主页</span>

                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="${pageContext.request.contextPath}/sys/message.jsp" title="管理留言信息">
                            <i class="icon-view-thumb"></i>
                            <span>管理留言信息</span>

                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="${pageContext.request.contextPath}/sys/contactmsg.jsp" title="录入通讯信息">

                            <i class="icon-document"></i>
                            <!--                         <i class="icon-camera"></i>  -->
                            <span>录入通讯信息</span>

                        </a>
                    </li>
                </ul>


                <!--
                <ul class="topnav menu-left-nest">
                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                            <span class="design-kit"></span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="index.jsp" title="通讯地图">
                            <i class="icon-window"></i>
                            <span>通讯地图</span>

                        </a>
                    </li>
                    <li>
                        <a class="tooltip-tip ajax-load" href="mail.html" title="Mail">
                            <i class="icon-mail"></i>
                            <span>mail</span>
                            <div class="noft-blue">289</div>
                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="icon.html" title="Icons">
                            <i class="icon-preview"></i>
                            <span>Icons</span>
                            <div class="noft-blue" style="display: inline-block; float: none;">New</div>
                        </a>
                    </li>

                    <li>
                        <a class="tooltip-tip" href="#" title="Extra Pages">
                            <i class="icon-document-new"></i>
                            <span>Extra Page</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="blank_page.html" title="Blank Page"><i class="icon-media-record"></i><span>Blank Page</span></a>
                            </li>
                             <li>
                                <a class="tooltip-tip2 ajax-load" href="profile.html" title="Profile Page"><i class="icon-user"></i><span>Profile Page</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="invoice.html" title="Invoice"><i class="entypo-newspaper"></i><span>Invoice</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="pricing_table.html" title="Pricing Table"><i class="fontawesome-money"></i><span>Pricing Table</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="time-line.html" title="Time Line"><i class="entypo-clock"></i><span>Time Line</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2" href="404.jsp" title="404 Error Page"><i class="icon-thumbs-down"></i><span>404 Error Page</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2" href="500.html" title="500 Error Page"><i class="icon-thumbs-down"></i><span>500 Error Page</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2" href="lock-screen.html" title="Lock Screen"><i class="icon-lock"></i><span>Lock Screen</span></a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a class="tooltip-tip " href="login.jsp" title="login">
                            <i class="icon-download"></i>
                            <span>Login</span>
                        </a>
                    </li>

                </ul>

                -->



                <ul id="menu-showhide" class="topnav menu-left-nest">


                    <!--

                    <li>
                        <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                            <span class="component"></span>
                            <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                        </a>
                    </li>



                    <li>
                        <a class="tooltip-tip" href="#" title="UI Element">
                            <i class="icon-monitor"></i>
                            <span>UI Element</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="element.html" title="Element"><i class="icon-attachment"></i><span>Element</span></a>
                            </li>
                            <li><a class="tooltip-tip2 ajax-load" href="button.html" title="Button"><i class="icon-view-list-large"></i><span>Button</span> <div class="noft-blue-number">10</div></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="wizard.html" title="Tab & Accordion"><i class="icon-folder"></i><span>Wizard</span><div class="noft-purple-number">3</div></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="calendar.html" title="Calender"><i class="icon-calendar"></i><span>Calendar</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="tree.html" title="Tree View"><i class="icon-view-list"></i><span>Tree View</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="grids.html" title="Grids"><i class="icon-menu"></i><span>Grids</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="chart.html" title="Chart"><i class="icon-graph-pie"></i><span>Chart</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip ajax-load" href="typhography.html" title="Typhoghrapy">
                                    <i class="icon-information"></i>
                                    <span>Typhoghrapy</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="tooltip-tip" href="#" title="Form">
                            <i class="icon-document"></i>
                            <span>Form</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="form-element.html" title="Form Elements"><i class="icon-document-edit"></i><span>Form Elements</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="andvance-form.html" title="Andvance Form"><i class="icon-map"></i><span>Andvance Form</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="text-editor.html" title="Text Editor"><i class="icon-code"></i><span>Text Editor</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="file-upload.html" title="File Upload"><i class="icon-upload"></i><span>File Upload</span></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a class="tooltip-tip" href="#" title="Tables">
                            <i class="icon-view-thumb"></i>
                            <span>Tables</span>
                        </a>
                        <ul>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="table-static.html" title="Table Static"><i class="entypo-layout"></i><span>Table Static</span></a>
                            </li>
                            <li>
                                <a class="tooltip-tip2 ajax-load" href="table-dynamic.html" title="Table Dynamic"><i class="entypo-menu"></i><span>Table Dynamic</span></a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a class="tooltip-tip ajax-load" href="map.html" title="Map">
                            <i class="icon-location"></i>
                            <span>Map</span>

                        </a>
                    </li>
                    -->

                </ul>



                <div class="side-dash">

                    <!--
                        <h3>
                            <span>Device</span>
                        </h3>
                        <ul class="side-dashh-list">
                            <li>Avg. Traffic
                                <span>25k<i style="color:#44BBC1;" class="fa fa-arrow-circle-up"></i>
                                </span>
                            </li>
                            <li>Visitors
                                <span>80%<i style="color:#AB6DB0;" class="fa fa-arrow-circle-down"></i>
                                </span>
                            </li>
                            <li>Convertion Rate
                                <span>13m<i style="color:#19A1F9;" class="fa fa-arrow-circle-up"></i>
                                </span>
                            </li>
                        </ul>
                        <h3>
                            <span>Traffic</span>
                        </h3>
                        <ul class="side-bar-list">
                            <li>Avg. Traffic
                                <div class="linebar">5,7,8,9,3,5,3,8,5</div>
                            </li>
                            <li>Visitors
                                <div class="linebar2">9,7,8,9,5,9,6,8,7</div>
                            </li>
                            <li>Convertion Rate
                                <div class="linebar3">5,7,8,9,3,5,3,8,5</div>
                            </li>
                        </ul>
                        <h3>
                            <span>Visitors</span>
                        </h3>

                        <div id="g1" style="height:180px" class="gauge"></div>
                       -->

                </div>
            </div>
        </div>
    </div>
</div>
<!-- END OF SIDE MENU -->



<!--  PAPER WRAP -->
<div class="wrap-fluid">
    <div class="container-fluid paper-wrap bevel tlbr">


        <!-- CONTENT -->
        <!--TITLE -->
        <div class="row">
            <div id="paper-top">
                <div class="col-lg-3">
                    <h2 class="tittle-content-header">
                        <i class="icon-window"></i>
                    </h2>

                </div>

                <div class="col-lg-7">
                    <div class="devider-vertical visible-lg"></div>
                    <div class="tittle-middle-header">

                        <div class="alert">
                            <button type="button" class="close" data-dismiss="alert"></button>

                        </div>


                    </div>

                </div>
                <div class="col-lg-2">
                    <div class="devider-vertical visible-lg"></div>

                    <!--
                    <div class="btn-group btn-wigdet pull-right visible-lg">
                        <div class="btn">
                            Widget</div>
                        <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </button>
                        <ul role="menu" class="dropdown-menu">
                            <li>
                                <a href="#">
                                    <span class="entypo-plus-circled margin-iconic"></span>Add New</a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="entypo-heart margin-iconic"></span>Favorite</a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="entypo-cog margin-iconic"></span>Setting</a>
                            </li>
                        </ul>
                    </div>

                    -->


                </div>
            </div>
        </div>
        <!--/ TITLE -->

        <!-- BREADCRUMB -->
        <ul id="breadcrumb">
            <li>
                <span class="entypo-home"></span>
            </li>
            <li><i class="fa fa-lg fa-angle-right"></i>
            </li>
            <li><a href="#" title="Sample page 1">主页</a>
            </li>
            <li><i class="fa fa-lg fa-angle-right"></i>
            </li>
            <li><a href="#" title="Sample page 1">管理留言信息</a>
            </li>

            <!--

            <li class="pull-right">
                <div class="input-group input-widget">

                    <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                </div>
             </li>
           -->
        </ul>

        <!-- END OF BREADCRUMB -->



        <%
            MessageService messageService = new MessageService();

            String currPage = request.getParameter("currentPage");

            //初始化
            if (currPage == null ||"".equals(currPage.trim())){
                currPage="1";
            }

            int currentPage = Integer.parseInt(currPage);



            //创建pagebean,设置当前页参数
            PageBean<Message> pageBean = new PageBean<>();

            pageBean.setCurrentPage(currentPage);

            messageService.getPageData(pageBean);

            List<Message> messages = pageBean.getPageData();


        %>



        <div id="paper-middle">

           <div style="width: 100%;height: 100%">
               <table class="table table-bordered table-striped cf">
                   <thead class="cf">
                   <tr>
                       <th>留言序号</th>
                       <th>留言人</th>
                       <th class="numeric">留言内容</th>
                       <th class="numeric">操作</th>

                   </tr>
                   </thead>
                   <tbody>


                   <%
                      for(int i = 0 ; i < messages.size() ; i++)
                      {
                   %>

                   <tr>
                       <td><%=i+1%></td>
                       <td><%=messages.get(i).getName()%></td>
                       <td class="numeric"><%=messages.get(i).getContent()%></td>
                       <td class="numeric">
                           <a class="btn" href="${pageContext.request.contextPath}/DeleteMessageServlet?messageId=<%=messages.get(i).getId()%>">
                               删除
                           </a>
                       </td>

                   </tr>

                   <%
                       }
                   %>
                   </tbody>
               </table>

               <div class="row">

                   <div class="col-md-1"></div>

                   <div class="col-md-11">
               <ul class="pagination">
                   <li>
                       <a href="${pageContext.request.contextPath}/sys/message.jsp?currentPage=<%=pageBean.getCurrentPage()-1%>">
                       &laquo;</a></li>

                   <%

                       for (int i = 0 ; i < pageBean.getTotalPage(); i++)
                       {
                           if ((i+1)!=pageBean.getCurrentPage())
                           {

                   %>
                   <li><a href="${pageContext.request.contextPath}/sys/message.jsp?currentPage=<%=i+1%>"><%=i+1%></a></li>
                   <%
                           }
                       }
                   %>

                   <li><a href="${pageContext.request.contextPath}/sys/message.jsp?currentPage=<%=pageBean.getCurrentPage()+1%>">&raquo;</a></li>
               </ul>
                   </div>
               </div>
           </div>


            <h1>&nbsp;&nbsp;&nbsp;网站运行状态</h1>
            <!--
                <div id="mapContainer"></div>
            -->

        </div>


        <br>



        <div class="content-wrap">


            <div class="row">


                <div class="col-lg-6">


                    <div class="chart-wrap">


                        <div class="chart-dash">


                            <div id="placeholder" style="width:100%;height:200px;">

                            </div>

                            <h3> 网站运行状态</h3>
                        </div>


                    </div>


                </div>

                <!--
                <div class="col-lg-6">
                    <div class="weather-wrap">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="temperature"><b>Monday</b>, 07:30 AM
                                    <span>F</span>
                                    <span><b>C</b>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="weather-icon">
                                    <i class="wi-day-lightning"></i>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="weather-text">
                                    <h2>Berlin
                                        <br><i>Day Lightning</i>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="weather-text">
                                    <h3><i class="wi-thermometer"></i>18<i class="wi-celcius"></i>
                                    </h3>
                                </div>
                            </div>
                        </div>
                        <div class="weather-dash">
                            <div class="row">
                                <div class="col-lg-2">
                                    <div class="daily-weather">
                                        <h2>Mon</h2>
                                        <h3>85
                                            <span><i class="wi-fahrenheit"></i>
                                            </span>
                                        </h3>
                                        <h4>
                                            <span><i class="wi-day-lightning"></i>
                                            </span>
                                        </h4>
                                        <h5>15
                                            <i>km/h</i>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="daily-weather">
                                        <h2>Tue</h2>
                                        <h3>81
                                            <span><i class="wi-fahrenheit"></i>
                                            </span>
                                        </h3>
                                        <h4><i class="wi-day-cloudy"></i>
                                        </h4>
                                        <h5>12
                                            <i>km/h</i>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="daily-weather">
                                        <h2>Wed</h2>
                                        <h3>83
                                            <span><i class="wi-fahrenheit"></i>
                                            </span>
                                        </h3>
                                        <h4><i class="wi-rain-mix"></i>
                                        </h4>
                                        <h5>14
                                            <i>km/h</i>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="daily-weather">
                                        <h2>Thu</h2>
                                        <h3>80
                                            <span><i class="wi-fahrenheit"></i>
                                            </span>
                                        </h3>
                                        <h4><i class="wi-day-sunny"></i>
                                        </h4>
                                        <h5>15
                                            <i>km/h</i>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="daily-weather">
                                        <h2>Fri</h2>
                                        <h3>79
                                            <span><i class="wi-fahrenheit"></i>
                                            </span>
                                        </h3>
                                        <h4><i class="wi-day-storm-showers"></i>
                                        </h4>
                                        <h5>11
                                            <i>km/h</i>
                                        </h5>
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="daily-weather">
                                        <h2>Sat</h2>
                                        <h3>82
                                            <span><i class="wi-fahrenheit"></i>
                                            </span>
                                        </h3>
                                        <h4><i class="wi-cloudy"></i>
                                        </h4>
                                        <h5>10
                                            <i>km/h</i>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

            -->
                <!-- /END OF CONTENT -->



                <!-- FOOTER -->
                <div class="footer-space"></div>
                <div id="footer">
                    <div class="devider-footer-left"></div>
                    <div class="time">
                        <p id="spanDate">
                        <p id="clock">
                    </div>
                    <div class="copyright">
                        <span class="entypo-heart"></span> <a href="#" title="网页模板" target="_blank">护理专家工作室</a> All Rights Reserved</div>
                    <div class="devider-footer"></div>


                </div>
                <!-- / END OF FOOTER -->


            </div>
        </div>
    </div>
    <!--  END OF PAPER WRAP -->


    <!-- END OF RIGHT SLIDER CONTENT-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/sys/assets/js/progress-bar/src/jquery.velocity.min.js"></script>
    <script src="${pageContext.request.contextPath}/sys/assets/js/progress-bar/number-pb.js"></script>
    <script src="${pageContext.request.contextPath}/sys/assets/js/progress-bar/progress-app.js"></script>



    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/preloader.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/app.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/load.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/main.js"></script>




    <!-- GAGE -->


    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/chart/jquery.flot.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/chart/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/chart/realTime.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/speed/canvasgauge-coustom.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/sys/assets/js/countdown/jquery.countdown.js"></script>



    <script src="${pageContext.request.contextPath}/sys/assets/js/jhere-custom.js"></script>

    <script>
        var gauge4 = new Gauge("canvas4", {
            'mode': 'needle',
            'range': {
                'min': 0,
                'max': 90
            }
        });
        gauge4.draw(Math.floor(Math.random() * 90));
        var run = setInterval(function() {
            gauge4.draw(Math.floor(Math.random() * 90));
        }, 3500);
    </script>


    <script type="text/javascript">
        /* Javascript
         *
         * See http://jhere.net/docs.html for full documentation
         */
        $(window).on('load', function() {
            $('#mapContainer').jHERE({
                center: [52.500556, 13.398889],
                type: 'smart',
                zoom: 10
            }).jHERE('marker', [52.500556, 13.338889], {
                icon: '${pageContext.request.contextPath}/sys/assets/img/marker.png',
                anchor: {
                    x: 12,
                    y: 32
                },
                click: function() {
                    alert('Hallo from Berlin!');
                }
            })
                    .jHERE('route', [52.711, 13.011], [52.514, 13.453], {
                        color: '#FFA200',
                        marker: {
                            fill: '#86c440',
                            text: '#'
                        }
                    });
        });
    </script>
    <script type="text/javascript">
        var output, started, duration, desired;

        // Constants
        duration = 5000;
        desired = '50';

        // Initial setup
        output = $('#speed');
        started = new Date().getTime();

        // Animate!
        animationTimer = setInterval(function() {
            // If the value is what we want, stop animating
            // or if the duration has been exceeded, stop animating
            if (output.text().trim() === desired || new Date().getTime() - started > duration) {
                console.log('animating');
                // Generate a random string to use for the next animation step
                output.text('' + Math.floor(Math.random() * 60)

                );

            } else {
                console.log('animating');
                // Generate a random string to use for the next animation step
                output.text('' + Math.floor(Math.random() * 120)

                );
            }
        }, 5000);
    </script>
    <script type="text/javascript">
        $('#getting-started').countdown('2015/01/01', function(event) {
            $(this).html(event.strftime(

                    '<span>%M</span>' + '<span class="start-min">:</span>' + '<span class="start-min">%S</span>'));
        });
    </script>

    <div style="text-align:center;">

        <p><a href="#" target="_blank" title="模板之家">护理专家</a>  <a href="#" title="网页模板" target="_blank">copyRight</a></p>
    </div>

</body>

</html>






