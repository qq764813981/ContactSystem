<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if(session.getAttribute("loginUser")==null)
    {
        response.sendRedirect(request.getContextPath()+"/front/login.jsp");
    }
%>

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

                        <%
                            if(session.getAttribute("loginUser")!=null)
                            {
                        %>
                        <h5 style="text-align: center">当前帐号</h5>
                        <h5 style="text-align: center"><%=session.getAttribute("loginUser")%>

                        </h5>
                        <%
                            }
                        %>

                        <li><a href="${pageContext.request.contextPath}/ReturnIndexServlet">返回主页</a></li>



                    </ul>


                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        
        <div id="container">

            <!-- BEGIN TESTIMONIAL -->



            <section id="testimonial" class="testimonial">

                <div class="row">
                    <div class="col-md-12 mg-bt-80">
                        <div class="header-content">

                            <br><br><br>
                            <h3>发送新的手机号</h3>
                        </div>
                    </div>

                    <form id="contactform" role="form" method="post" action="${pageContext.request.contextPath}/updateContactPhoneServlet">
                        <div class="col-md-3">

                        </div>

                        <div class="col-md-4">

                            <div class="form-group">
                                <input type="number" class="form-control" id="name" placeholder="请输入新的手机号" name="newPhone">
                            </div>

                        </div>

                        <div class="col-md-3">

                            <button type="submit" class="btn">确定修改</button>

                        </div>

                        <div class="col-md-2">

                        </div>


                    </form>


                </div>

                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>


            </section>


            <!-- END TESTIMONIAL -->

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


