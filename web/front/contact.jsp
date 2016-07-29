<%@ page import="com.cxspace.entity.Contact" %>
<%@ page import="com.cxspace.bean.PageBean" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/front/images/favicon/favicon.png" type="image/x-icon">
    <link rel="icon" href="${pageContext.request.contextPath}/front/images/favicon/favicon.png" type="image/x-icon">

    <title>高三一班通讯录</title>


    <!--Library Styles-->    
    <link href="${pageContext.request.contextPath}/front/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/front/css/lib/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/front/css/lib/nivo-lightbox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/front/css/lib/nivo-themes/default/default.css" rel="stylesheet">


    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=QXwuA2Zi8h3huVQvqVrW2MhU"></script>

    <!--Template Styles-->
    <link href="${pageContext.request.contextPath}/front/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/front/css/scheme/purple.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="/front/js/html5shiv.js"></script>
      <script src="/front/js/respond.min.js"></script>
    <![endif]-->
</head>

<body data-spy="scroll">

    <!-- Preloader -->
    <div id="preloader">
        <div id="status"></div>
    </div>
	
    <div id="main-wrapper">
        
        <!-- Site Navigation -->
        <div id="menu">
            <nav class="navbar navbar-default" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp#">
                        <img src="${pageContext.request.contextPath}/front/images/logo.png" alt="logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-navbar-collapse">
                    <ul class="nav navbar-nav">

                        <li class="active"><a  href="${pageContext.request.contextPath}/ReturnIndexServlet">返回主页</a></li>
						
						<!--
						
                        <li><a class="sscroll" href="index.jsp#services">Services</a></li>
						
						-->

                        <!--
                        <li><a class="sscroll" href="{pageContext.request.contextPath}/front/index.jsp#portfolio">照片墙</a></li>



                        <li><a class="sscroll" href="pageContext.request.contextPath}/front/index.jsp#about">通讯录</a></li>



                        <li><a class="sscroll" href="pageContext.request.contextPath}/front/index.jsp#testimonial">修改通讯信息</a></li>

						
                        <li><a class="sscroll" href="pageContext.request.contextPath}/front/index.jsp#clients">通讯地图</a></li>

						
                        <li><a class="sscroll" href="pageContext.request.contextPath}/front/index.jsp#blog-front">留言板</a></li>
                        <li><a class="sscroll" href="pageContext.request.contextPath}/front/index.jsp#contact">技术支持</a></li>

                       -->
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        
        <div id="container">


            <!-- BEGIN TEAM -->
            <section id="about" class="about gray">


			   <div class="row">
                    <div class="col-md-12 mg-bt-80">
                        <div class="header-content">
                            <h2>通讯录</h2>
                            <h5>距离再远，也不要忘了联系</h5>
                        </div>
                    </div>
                    <div class="col-lg-12">



                            <c:choose>

                        <c:when test="${not empty requestScope.pageBean.pageData}">

                                <c:forEach var="contact" items="${requestScope.pageBean.pageData}" varStatus="vs">
                        <div class="row mg-bt-40">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="teams">
                                    <div class="pict">
                                        <img src="${pageContext.request.contextPath}/upload/${contact.pic}" alt="Team 1">
                                    </div>
                                    <div class="desc">
                                        <h3>${contact.name}</h3>
                                        <span>${contact.phone}</span>
                                        <div class="social">
                                          <h5>录取院校：${contact.college}</h5>
						                  <h5>录取专业：${contact.major}</h5>
								          <h5>所在城市：${contact.city}</h5>

                                        </div>
                                    </div>

                                </div>
                          </div>
                            </c:forEach>

                            </c:when>

                            <c:otherwise>
                                <h2>没有数据</h2>
                            </c:otherwise>


                            </c:choose>
                            <!--
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="teams">
                                    <div class="pict">
                                        <img src="pageContext.request.contextPath}/front/images/team/02.jpg" alt="Team 1">
                                    </div>
                                    <div class="desc">
                                        <h3>熊嘉</h3>
                                        <span>15070872014</span>
                                        <div class="social">
                                          <h5>录取院校：中国传媒大学</h5>
						                  <h5>录取专业：传播学</h5>
								          <h5>所在城市：北京</h5>

                                        </div>
                                    </div>

                                </div>
                          </div>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="teams">
                                    <div class="pict">
                                        <img src="/front/images/team/03.jpg" alt="Team 1">
                                    </div>
                                    <div class="desc">
                                        <h3>熊嘉</h3>
                                        <span>15070872014</span>
                                        <div class="social">
                                          <h5>录取院校：中国传媒大学</h5>
						                  <h5>录取专业：传播学</h5>
								          <h5>所在城市：北京</h5>

                                        </div>
                                    </div>

                                </div>
                          </div>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="teams">
                                    <div class="pict">
                                        <img src="/front/images/team/04.jpg" alt="Team 1">
                                    </div>
                                    <div class="desc">
                                        <h3>熊嘉</h3>
                                        <span>15070872014</span>
                                        <div class="social">
                                          <h5>录取院校：中国传媒大学</h5>
						                  <h5>录取专业：传播学</h5>
								          <h5>所在城市：北京</h5>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        -->
                    </div>
                </div>

                <ul class="pagination">
                    <li><a href="${pageContext.request.contextPath}/PageContactServlet?currentPage=${requestScope.pageBean.currentPage-1}">&laquo;</a></li>



                        <%
                            PageBean<Contact> contactPageBean = (PageBean<Contact>) request.getAttribute("pageBean");

                            for (int i = 0 ; i < contactPageBean.getTotalPage(); i++)
                            {

                                     if ((i+1)!=contactPageBean.getCurrentPage())
                                   {

                           %>
                        <li><a href="${pageContext.request.contextPath}/PageContactServlet?currentPage=<%=i+1%>"><%=i+1%></a></li>
                           <%
                                   }

                            }
                        %>

                    <li><a href="${pageContext.request.contextPath}/PageContactServlet?currentPage=${requestScope.pageBean.currentPage+1}">&raquo;</a></li>
                </ul><br>

                   </div>
            </section>
            <!-- END TEAM -->

            <!-- BEGIN FOOTER -->
            <footer>
                <div class="row">
                    <div class="col-md-12">
                        <div class="social">
                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                            <a href="javascript:;"><i class="fa fa-pinterest"></i></a>
                            <a href="javascript:;"><i class="fa fa-dribbble"></i></a>
                </div>
                                           
                    </div>
                </div>
            </footer>
            <!-- END FOOTER -->
        </div>
    </div>


    <!-- Back to top -->
    <div id="backtotop">       
        <a class="to-top-btn sscroll" href="${pageContext.request.contextPath}/front/index.jsp#home"><i class="fa fa-angle-double-up"></i></a>
    </div>


    <!-- Library Scripts -->
	

    <script src="${pageContext.request.contextPath}/front/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/jquery.preloader.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/nivo-lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/jquery.superslides.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/smoothscroll.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/jquery.sudoslider.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/jquery.bxslider.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/jquery.mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/jquery.backtotop.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script src="${pageContext.request.contextPath}/front/js/lib/retina.min.js"></script>

    <!-- Custom Script -->    
    <script src="${pageContext.request.contextPath}/front/js/main.js"></script>
</body>

</html>

<script type="text/javascript">

    // 百度地图API功能
    var map = new BMap.Map("allmap");

    map.centerAndZoom(new BMap.Point(113.331398,39.897445),5);

    map.enableScrollWheelZoom(true);

</script>
