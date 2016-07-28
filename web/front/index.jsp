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

                        <li class="active"><a class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#home">主页</a></li>
						
						<!--
						
                        <li><a class="sscroll" href="index.jsp#services">Services</a></li>
						
						-->
						
                        <li><a class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#portfolio">照片墙</a></li>
						

                        <li><a  href="${pageContext.request.contextPath}/PageContactServlet">通讯录</a></li>


                        <li><a class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#testimonial">修改通讯信息</a></li>

						
                        <li><a class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#clients">通讯地图</a></li>

						
                        <li><a  href="${pageContext.request.contextPath}/PageMessageServlet">留言板</a></li>
                        <li><a class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#contact">技术支持</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        
        <div id="container">
            <!-- BEGIN HOME -->
            <section id="home" class="home">
                <!-- Superslides -->
                <div id="home-slide">
                    <ul class="slides-container text-center">
                        <li>
                            <div class="slide-text">
                                <h2>那年夏天</h2>
                                <span>很多年后，我们把这个夏天叫做“那年夏天”，但是那年夏天，我们曾笑得很美，很绚烂。</span>
                                <br/>
                            </div>
                          <div class="slide-filter"></div>
                            <img src="${pageContext.request.contextPath}/front/images/slider/slide-1.jpg" class="par" alt="first">
                        </li>
                        <li>
                            <div class="slide-text">
                                <h2>有你有我</h2>
                                <span>不管未来有多长久，请记住成长的路上有你有我；不管经历多少个春夏秋冬，请铭记共度的青春年华。亲爱的朋友，愿你绽放最绚丽的笑容，给明天画出最美丽的梦。</span>
                                <br/>
                            </div>
                          <div class="slide-filter"></div>
                            <img src="${pageContext.request.contextPath}/front/images/slider/slide-2.jpg" class="par" alt="first">
                        </li>
                        <li>
                            <div class="slide-text">
                                <h2>似水年华</h2>
                                <span>离开不是离别，是启航，是去追寻我们美丽的梦想！哪怕眼含不舍，我们也要笑着上路。多年以后，当我们再回首，一定还会记得，那初夏的雨中，也曾有你我的笑脸，那和煦的阳光下，也曾映照着你我如水的年华！</span>
                                <br/>
                            </div>
                          <div class="slide-filter"></div>
                            <img src="${pageContext.request.contextPath}/front/images/slider/slide-3.jpg" class="par" alt="first">
                        </li>
                    </ul>
                    <nav class="slides-navigation slidez">
                        <a href="javascript:;" class="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                        <a href="javascript:;" class="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                    </nav>
                </div>
                <!-- End of Superslide -->
            </section>
            <!-- END HOME -->
            
            <!-- BEGIN SERVICES -->
			
			<!--
            <section id="services" class="services">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-content">
                            <h2>Services</h2>
                            <h3>This is what we are good at</h3>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="service">
                                    <div class="icon-holder">
                                        <i class="fa fa-paper-plane"></i>
                                    </div>
                                    <h3 class="heading">Web Design</h3>
                                    <p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>
				</div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="service">
                                    <div class="icon-holder">
                                        <i class="fa fa-diamond"></i>
                                    </div>
                                    <h3 class="heading">Web Programming</h3>
                                    <p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>
				</div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="service">
                                    <div class="icon-holder">
                                        <i class="fa fa-camera"></i>
                                    </div>
                                    <h3 class="heading">Branding</h3>
                                    <p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>
				</div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="service">
                                    <div class="icon-holder">
                                        <i class="fa fa-heartbeat"></i>
                                    </div>
                                    <h3 class="heading">Consultation</h3>
                                    <p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>
				</div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="service">
                                    <div class="icon-holder">
                                        <i class="fa fa-life-ring"></i>
                                    </div>
                                    <h3 class="heading">Technical Writing</h3>
                                    <p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>
				</div>
                            </div>
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <div class="service">
                                    <div class="icon-holder">
                                        <i class="fa fa-rocket"></i>
                                    </div>
                                    <h3 class="heading">Bug Hunt</h3>
                                    <p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>
				</div>
                            </div>
                        </div>
                    </div>                   
                </div>
            </section>
			
			
			-->
			
            <!-- END SERVICES -->
     
            <!-- BEGIN PORTFOLIO -->
            <section id="portfolio" class="portfolio gray">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-content">
                            <h2>照片墙</h2>
                            <h5>有一段时光，有一群笑脸，永生难忘</h5>
                        </div>
                    </div>
                    
                    <div class="col-md-12">
                        <ul class="portfolioFilter text-center">
                            <li data-filter="websites">早春</li>
                            <li data-filter="illustrations">盛夏</li>
                            <li data-filter="photo">晚秋</li>
                            <li data-filter="all">暖冬</li>
                        </ul>
                    </div>
                    <div class="col-md-12 mg-bt-80">
                        <div class="row portfolioContainer  text-center">
                            <div class="col-md-4 col-xs-6 portfolio-item websites">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-1.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>Designing UI/UX
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-1.jpg" alt="portfolio-thumb-1">
                                </a>
                            </div>

                            <div class="col-md-4 col-xs-6 portfolio-item illustrations">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-5.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>Designing Apps
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-5.jpg" alt="portfolio-thumb-5">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item websites">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-3.jpg" title="Image with title"  data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>Branding Identity
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-3.jpg" alt="portfolio-thumb-3">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item photo">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-4.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>Photography
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-4.jpg" alt="portfolio-thumb-4">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item websites">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-2.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>Website Design
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-2.jpg" alt="portfolio-thumb-2">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item illustrations">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-6.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>Branding Illustration
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/portfolio/portfolio-thumb-6.jpg" alt="portfolio-thumb-6">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END PORTFOLIO -->


            <!-- BEGIN TESTIMONIAL -->



            <section id="testimonial" class="testimonial">

                <div class="row">
                    <div class="col-md-12 mg-bt-80">
                        <div class="header-content">
                            <h2>修改通讯信息</h2>
                            <h3>发送新的手机号给后台修改</h3>
                        </div>
                    </div>

                    <form id="contactform" role="form">
                        <div class="col-md-3">

                        </div>

                        <div class="col-md-4">

                            <div class="form-group">
                                <input type="text" class="form-control" id="name" placeholder="请输入新的手机号">
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


            <!-- BEGIN CLIENTS -->
			

            <section id="clients" class="clients">
                <div class="row">
                    <div class="col-md-12 mg-bt-80">
                        <div class="header-content">
                            <h2>通讯地图</h2>
                            <h5>滚动拖拽鼠标操作地图</h5>
                        </div>
                    </div>                    
                    <div class="col-lg-12">
                        <div class="row mg-bt-60">
                            <div class="col-md-12">


                                <div id="allmap" style="height:580px;width: 100%"></div>


                            </div>
                        </div>
                    </div>
                </div>
            </section>
			

            <!-- END CLIENTS -->


            
            <!-- BEGIN SUBSCRIPTION -->
			
			<!--
			
            <section class="subscribe text-center">
                <div class="row">
                    <div class="col-md-12">
                        <h3>Stay Tuned by subscribing to our Newsletter.</h3>
                        <p>We will not share your email.</p>

                        <form role="form">
                            <input type="text" class="form-control placeholder" placeholder="Enter Your Email">
                            <button class="btn" type="submit">Subscribe</button>
                        </form>
                    </div>
                </div>                
            </section>
			
			-->
            <!-- END SUBSCRIPTION -->
            
            <!-- BEGIN CTA -->
			
			<!--
            <section class="cta text-center">
                <div class="row">
                    <div class="col-md-12">
                        <h3>Purchase Team Pro and Get Access To</h3>
                        <p>6 Pre-built color scheme, less, php enabled contact form, slider and parallax home and Pro SUPPORT</p>
                        <a href="http://www.cssmoban.com//download/team-creative-business-portfolio-template/" class="btn">Purchase Now</a>                        
                    </div>
                </div>                
            </section>
			
			-->
            <!-- END CTA -->

            <!-- BEGIN CONTACT -->
            <section id="contact" class="contact gray">
                <div class="row">
                    <div class="col-md-12 mg-bt-80">
                        <div class="header-content">
                            <h2>发送建议</h2>
                            <h5>请您把好的建议发给我们，我们会在最短的时间内给你回复</h5>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <div class="address">
                            <h2>和我们联系</h2>
                            
							<h2>我们的办公室</h2>
                            <ul class="office">
                                <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> 江西-南昌市-南昌大学-窗星工作室</li>
                                <li><i class="fa fa-phone"></i> <strong>Phone:</strong> 8888-8888</li>
                                <li><i class="fa fa-envelope"></i> <strong>Email:</strong> <a href="mailto:mail@example.com">000000000@aliyun.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <form id="contact-form" role="form">                            
                            <div class="form-group">
                                <input type="text" class="form-control" id="c_name" placeholder="名字">
                            </div>
                            
                            <div class="form-group">
                                <input type="email" class="form-control" id="c_email" placeholder="邮箱">                                
                            </div>
                            
                            <div class="form-group">
                                <textarea class="form-control" id="c_message" rows="10" placeholder="信息"></textarea>
                            </div>
                            <br/>
                            <button type="submit" class="btn">发送信息</button>
                            <div class="ajax-response"></div>
                        </form>
                    </div>
                    
                </div>
            </section>
            <!-- END CONTACT -->
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
