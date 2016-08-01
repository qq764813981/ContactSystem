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

    <!--

    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

    -->

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

                        <li><a   href="${pageContext.request.contextPath}/ExitLoginServlet">退出登录</a></li>

                        <li class="active"><a  class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#home">返回顶部</a></li>
						

                        <li><a  href="${pageContext.request.contextPath}/front/changePassword.jsp">修改登录密码</a></li>

                        <li><a  href="${pageContext.request.contextPath}/front/changePic.jsp">修改头像</a></li>

                        <li><a class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#portfolio">照片墙</a></li>
						

                        <li><a  href="${pageContext.request.contextPath}/PageContactServlet">通讯录</a></li>


                        <li><a href="${pageContext.request.contextPath}/front/changePhone.jsp">修改通讯信息</a></li>

						
                        <li><a class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#clients">通讯地图</a></li>

						
                        <li><a  href="${pageContext.request.contextPath}/PageMessageServlet">留言板</a></li>
                        <li><a  class="sscroll" href="${pageContext.request.contextPath}/front/index.jsp#contact">发送建议</a></li>

                        <%
                            if (request.getAttribute("suggestMessage")!=null)
                            {
                        %>
                        <h3><%=request.getAttribute("suggestMessage")%></h3>
                        <%
                            }
                        %>

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
                            <img src="${pageContext.request.contextPath}/front/images/index_1.jpg" class="par" alt="first">
                        </li>
                        <li>
                            <div class="slide-text">
                                <h2>有你有我</h2>
                                <span>不管未来有多长久，请记住成长的路上有你有我；不管经历多少个春夏秋冬，请铭记共度的青春年华。亲爱的朋友，愿你绽放最绚丽的笑容，给明天画出最美丽的梦。</span>
                                <br/>
                            </div>
                          <div class="slide-filter"></div>
                            <img src="${pageContext.request.contextPath}/front/images/index_3.jpg" class="par" alt="first">
                        </li>
                        <li>
                            <div class="slide-text">
                                <h2>似水年华</h2>
                                <span>离开不是离别，是启航，是去追寻我们美丽的梦想！哪怕眼含不舍，我们也要笑着上路。多年以后，当我们再回首，一定还会记得，那初夏的雨中，也曾有你我的笑脸，那和煦的阳光下，也曾映照着你我如水的年华！</span>
                                <br/>
                            </div>
                          <div class="slide-filter"></div>
                            <img src="${pageContext.request.contextPath}/front/images/index_2.jpg" class="par" alt="first">
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
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/1.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/1.jpg" alt="portfolio-thumb-1">
                                </a>
                            </div>

                            <div class="col-md-4 col-xs-6 portfolio-item illustrations">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/2.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/2.jpg" alt="portfolio-thumb-5">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item websites">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/5.jpg" title="Image with title"  data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/5.jpg" alt="portfolio-thumb-3">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item photo">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/9.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/9.jpg" alt="portfolio-thumb-4">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item websites">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/12.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/12.jpg" alt="portfolio-thumb-2">
                                </a>
                            </div>
                            <div class="col-md-4 col-xs-6 portfolio-item illustrations">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/16.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/16.jpg" alt="portfolio-thumb-6">
                                </a>
                            </div>

                            <div class="col-md-4 col-xs-6 portfolio-item illustrations">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/17.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/17.jpg" alt="portfolio-thumb-6">
                                </a>
                            </div>

                            <div class="col-md-4 col-xs-6 portfolio-item illustrations">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/30.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/30.jpg" alt="portfolio-thumb-6">
                                </a>
                            </div>

                            <div class="col-md-4 col-xs-6 portfolio-item illustrations">
                                <a class="popup" href="${pageContext.request.contextPath}/front/images/33.jpg" data-lightbox-gallery="team-portfolio">
                                    <span class="project-hover">
                                        <span>
                                        </span>
                                    </span>
                                    <img src="${pageContext.request.contextPath}/front/images/33.jpg" alt="portfolio-thumb-6">
                                </a>
                            </div>


                        </div>
                    </div>
                </div>
            </section>
            <!-- END PORTFOLIO -->


            <!-- BEGIN CLIENTS -->
			

            <section id="clients" class="clients">

                <!--
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row mg-bt-90">
                            <div class="col-md-12">
  -->

                                <div id="allmap" style="height:600px;width: 100%"></div>


                <!--
                            </div>
                        </div>
                    </div>
                </div>
                -->
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
                                <li><i class="fa fa-map-marker"></i> <strong>Address:</strong> 江西-南昌市-南昌大学-护理专家工作室</li>
                                <li><i class="fa fa-phone"></i> <strong>Phone:</strong> 13037239781</li>
                                <li><i class="fa fa-envelope"></i> <strong>Email:</strong> <a href="mailto:mail@example.com">442961832@qq.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6">
                        <form id="contact-form1" role="form" method="post" action="${pageContext.request.contextPath}/AddSuggestServlet">
                            <div class="form-group">
                                <input type="text" class="form-control" id="c_name" placeholder="名字" name="name">
                            </div>
                            
                            <div class="form-group">
                                <input type="email" class="form-control" id="c_email" placeholder="邮箱" name="email">
                            </div>
                            
                            <div class="form-group">
                                <textarea class="form-control" id="c_message" rows="10" placeholder="信息" name="content"></textarea>
                            </div>
                            <br/>
                            <button type="submit" class="btn">发送信息</button>

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

    /*
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    map.enableScrollWheelZoom(true);


    //郝美玲,姜泽钜,马驰骋,饶隽,胡正宇,邦欣悦,章唯 对应南昌大学

    var point = new BMap.Point(115.818619,28.671641);
    var marker = new BMap.Marker(point);  // 创建标注
    marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
    map.addOverlay(marker);              // 将标注添加到地图中

    //设置中心点
    map.centerAndZoom(point, 5);

    var opts = {
        width : 200,     // 信息窗口宽度
        height: 100,     // 信息窗口高度
        title : "南昌大学" , // 信息窗口标题
        enableMessage:true,//设置允许信息窗发送短息
        message:"#"
    }

    var infoWindow = new BMap.InfoWindow("郝美玲,姜泽钜,马驰骋,饶隽,胡正宇,邦欣悦,章唯", opts);  // 创建信息窗口对象
    marker.addEventListener("click", function(){
        map.openInfoWindow(infoWindow,point); //开启信息窗口
    });

*/

    // 百度地图API功能
    map = new BMap.Map("allmap");
    map.enableScrollWheelZoom(true);
    map.centerAndZoom(new BMap.Point(115.876555,28.628748), 5);
    var data_info = [[115.818619,28.671641,"郝美玲,姜泽钜,马驰骋,饶隽,胡正宇,邦欣悦,章唯-南昌大学"],
        [116.562372,39.921471,"熊嘉-中国传媒大学"],
        [121.3558880000,30.7269320000,"邹涵-上海师范大学"],
        [115.7600450000,28.6196610000,"贾艳-江西科技师范大学理工学院"],
        [102.7243440000,25.0888110000,"罗敏-云南财经大学"],
        [114.9355580000,25.8608130000,"史燕妮-江西理工大学"],
        [117.2052540000,34.2261880000,"刘莹-中国矿业大学"],
        [116.3965610000,27.9679170000,"王文菁-南昌大学"],
        [121.4565230000,37.4939920000,"熊瑛-山东工商学院"],
        [115.7627120000,28.6697250000,"涂志珍,刘森良-江西警察学院"],
        [115.8124070000,28.7282230000,"程艳-南昌师范学院"],
        [115.8393150000,28.7682040000,"胡艳,尚宣辰,万紫秋-江西农业大学"],
        [113.5442720000,22.3555930000,"张铭轩-北京师范大学珠海分校"],
        [120.4867650000,36.1209700000,"屈宏宇-青岛大学"],
        [113.5578760000,34.8364720000,"王博宇忻-河南工业大学"],
        [114.8955090000,25.8074110000,"胡鹏飞-赣南师范大学"],
        [114.4175490000,30.5158430000,"刘旭东-华中科技大学"],
        [114.3581370000,30.5253310000,"蔡子明-武汉理工大学"],
        [121.4314480000,31.1491710000,"张超,胡超-华东理工大学"],
        [115.8186190000,28.6716410000,"熊昊宇,黄泽康,万子丰,周茜雅-华东交通大学"],
        [116.6903400000,39.5435200000,"周铭楷-中国人民武装警察部队学院"],
        [115.8610350000,28.7488320000,"万乾良-江西财经大学"],
        [117.1911550000,29.2801340000,"李小兵-景德镇学院"],
        [119.5284560000,39.9122970000,"陈聪-燕山大学"],
        [116.0178910000,29.6845700000,"刘兵武-九江学院"],
        [115.8350440000,28.6570310000,"丁鹏鲲-南昌航空大学"],
        [115.9511620000,28.6805410000,"陈梓柯-南昌大学科学技术学院"],
        [115.8447810000,28.7427730000,"晏佳欣-江西科技师范大学"],
        [112.9320030000,28.2106470000,"夏书婷-湖南财政经济学院"],
        [121.4005370000,31.3222370000,"陈志坚-上海大学"],
        [113.6584250000,34.7944510000,"黄镒铂-铁道警察学院"],
        [117.2620990000,31.8507720000,"吴雅波-安徽大学"],
        [115.9298470000,28.6818100000,"万袁毓玮-江西师范大学"],
    ];

    var opts = {
        width : 250,     // 信息窗口宽度
        height: 80,     // 信息窗口高度
        title : "信息窗口" , // 信息窗口标题
        enableMessage:true//设置允许信息窗发送短息
    };
    for(var i=0;i<data_info.length;i++){
        var marker = new BMap.Marker(new BMap.Point(data_info[i][0],data_info[i][1]));  // 创建标注
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
        var content = data_info[i][2];
        map.addOverlay(marker);               // 将标注添加到地图中
        addClickHandler(content,marker);
    }
    function addClickHandler(content,marker){
        marker.addEventListener("click",function(e){
            openInfo(content,e)}
        );
    }
    function openInfo(content,e){
        var p = e.target;
        var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
        var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象
        map.openInfoWindow(infoWindow,point); //开启信息窗口
    }

    //熊嘉

    /*
    var point1 = new BMap.Point(115.818619,28.671641);
    var marker1 = new BMap.Marker(point1);  // 创建标注
    map.addOverlay(marker1);// 将标注添加到地图中
*/

    /*
    var opt1 = {
        width : 200,     // 信息窗口宽度
        height: 100,     // 信息窗口高度
        title : "中国传媒大学" , // 信息窗口标题
        enableMessage:true,//设置允许信息窗发送短息
        message:"#"
    }

    var infoWindow1 = new BMap.InfoWindow("熊嘉", opt1);  // 创建信息窗口对象
    marker.addEventListener("click", function(){
        map.openInfoWindow(infoWindow1,point1); //开启信息窗口
    });

*/






</script>
