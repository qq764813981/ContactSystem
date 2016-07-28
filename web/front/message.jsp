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

    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

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

                        <li class="active"><a href="${pageContext.request.contextPath}/ReturnIndexServlet">返回主页</a></li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        
        <div id="container">


            <!-- BEGIN BLOG -->
            <section id="blog-front" class="blog-front gray">
                <div class="row">
                    <div class="col-md-12 mg-bt-70">
                        <div class="header-content">
                            <h2>留言板</h2>
                            <h5>有一些话，直到告别后，也遗憾的没有说出来</h5>
                        </div>
                    </div>
                </div>

                <form id="contactform1" role="form">
                <div class="row">

                    <div class="col-md-12">
                        <div class="form-group">
                            <textarea class="form-control" id="s_message" rows="10" placeholder="说点什么吧..."></textarea>
                        </div>
                    </div>

                </div>

                    <br>

                    <div class="row">

                        <div class="col-md-10">

                        </div>

                        <div class="col-md-2">

                            <button type="submit" class="btn">提交留言</button>
                        </div>

                    </div>

                </form>

                <br>
                <br><br><br>
                <div class="col-md-12 mg-bt-70">
                    <div class="header-content">
                        <h3>留言列表</h3>
                    </div>
                </div>


                <div class="row">


                    <article class="col-md-4 col-sm-6">
                        <figure class="blog-thumb">
                            <img src="${pageContext.request.contextPath}/front/images/blog/blog-1.jpg" alt="blog-thumb">
                        </figure>
                        <div class="post-area">
                            <a class="post-cat" href="">
                            <h4>留言人姓名1</h4>
                            </a>
                            <a class="post-title" href="blog-post.html">
                                <h3>时间1</h3>
                            </a>
                            <p class="post-content"> 一曲高歌和着蝉鸣而落，一段道路并着泪水而尽，一对书桌迎着热浪而离，一段故事却不会随着分别而终。未来无绝期，务必常联系。</p>                            
                        </div>
                    </article>


                </div>
                <div class="row">
                    <div class="col-md-12 text-center">

                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul><br>

                        <!--

                            <a class="btn blog-btn" href="blog.html">See what else is going on...</a>
                        -->
					
					</div>
                </div>
            </section>
            <!-- END BLOG -->
            

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
