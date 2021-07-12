<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>资源回收</title>
 <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath%>assets/images/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>assets/images/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath%>assets/images/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath%>assets/images/favicon.ico">
    <link rel="shortcut icon" href="<%=basePath%>assets/images/favicon.ico">
    <!-- Bootstrap -->
    <link href="<%=basePath%>assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Fontawesome -->
    <link href="<%=basePath%>assets/css/font-awesome.css" rel="stylesheet">
    <!-- Flaticons -->
    <link href="<%=basePath%>assets/css/font/flaticon.css" rel="stylesheet">
    <!-- Slick Slider -->
    <link href="<%=basePath%>assets/css/slick.css" rel="stylesheet">
    <!-- Range Slider -->
    <link href="<%=basePath%>assets/css/ion.rangeSlider.min.css" rel="stylesheet">
    <!-- Datepicker -->
    <link href="<%=basePath%>assets/css/datepicker.css" rel="stylesheet">
    <!-- magnific popup -->
    <link href="<%=basePath%>assets/css/magnific-popup.css" rel="stylesheet">
    <!-- Nice Select -->
    <link href="<%=basePath%>assets/css/nice-select.css" rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link href="<%=basePath%>assets/css/style.css" rel="stylesheet">
    <!-- Custom Responsive -->
    <link href="<%=basePath%>assets/css/responsive.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Start Header -->
    <header class="header">
        <!-- Topbar -->
        <div class="topbar bg-custom-blue">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="left-side">
                            <ul class="custom-flex">
                                <li>
                                    <a href="#" class="text-custom-white">
                                        <i class="fab fa-facebook-f"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="text-custom-white">
                                        <i class="fab fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="text-custom-white">
                                        <i class="fab fa-instagram"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="text-custom-white">
                                        <i class="fab fa-linkedin"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="right-side">
                            <ul class="custom-flex">
                                <li>
                                    <a href="<%=basePath%>customer/login" class="text-custom-white">登陆</a>
                                </li>
                                <li>
                                    <a href="#" class="text-custom-white">注册</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar -->
        <!-- Navigation -->
        <div class="navigation">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="main-navigation">
                            <div class="logo">
                                <a href="#l">
                                   <img src="<%=basePath%>assets/images/toor-logo.png" class="img-fluid image-fit" alt="img">
                                </a>
                            </div>
                            <div class="main-menu">
                                <div class="logo">
                                    <a >
                                        <img src="<%=basePath%>assets/images/toor-logo.png" class="img-fluid image-fit" alt="img"  style="height: 40px">
                                    </a>
                                </div>
                                <nav>
                                    <ul class="custom-flex">

                                        <li class="menu-item ">
                                            <a href="<%=basePath%>customer/searchCompany" class="text-light-dark">浏览商家</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="#" class="text-light-dark">订单查询</a>
                                        </li>
                                        <li class="menu-item ">
                                            <a href="#" class="text-light-dark">个人页面</a>
                                         
                                    </ul>
                                </nav>
                                <div class="cta-btn">
                                    <a href="<%=basePath%>customer/searchCompany" class="btn-first btn-submit">立即预约</a>
                                </div>
                            </div>
                            <div class="hamburger-menu">
                                <div class="menu-btn">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navigation -->
    </header>
    <!-- End Header -->
    <!-- Start Slider -->
    <div class="slider p-relative">
        <div class="main-banner arrow-layout-1 ">
            <div class="slide-item">
                <img src="<%=basePath%>assets/images/flight-2.jpg" class="image-fit" alt="Slider">
                <div class="transform-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="slider-content">
                                    <h1 class="text-custom-white">资源回收（未改！）</h1>
                                    <a href="#" class="btn-first btn-small">立即预约</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="slide-item">
                <img src="<%=basePath%>assets/images/hotel-1.jpg" class="image-fit" alt="Slider">
                <div class="transform-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="slider-content">
                                     <h1 class="text-custom-white">资源回收</h1>
                                    <a href="#" class="btn-first btn-small">立即预约</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slide-item">
                <img src="<%=basePath%>assets/images/car-1.jpg" class="image-fit" alt="Slider">
                <div class="transform-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="slider-content">
                                   <h1 class="text-custom-white">资源回收</h1>
                                    <a href="#" class="btn-first btn-small">立即预约</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Slider -->
   
    <!-- Start Hotels -->
    <section class="section-padding hotels-sec bg-light-white">
        <div class="container">
            <div class="section-header">
                <div class="section-heading">
                    <h3 class="text-custom-black">推荐回收企业（未改！）</h3>
                  
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="hotel-slider arrow-layout-2 row">
                        <div class="slide-item col-12">
                            <div class="hotel-grid">
                                <div class="hotel-grid-wrapper bx-wrapper">
                                    <div class="image-sec animate-img">
                                        <a href="hotel-detail.html">
                                            <img src="<%=basePath%>assets/images/hotels/1.png" class="full-width" alt="img">
                                        </a>
                                    </div>
                                    <div class="hotel-grid-caption padding-20 bg-custom-white p-relative">
                                        <h4 class="title fs-16"><a href="hotel-detail.html" class="text-custom-black">Hotel Hilton<small class="text-light-dark">Paris france</small></a></h4>
                                        <span class="price"><small>avg/night</small>$520</span>
                                        <div class="action">
                                            <a class="btn-second btn-small" href="hotel-detail.html">View</a>
                                            <a class="btn-first btn-submit" href="booking.html">Book</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide-item col-12">
                            <div class="hotel-grid">
                                <div class="hotel-grid-wrapper bx-wrapper">
                                    <div class="image-sec animate-img">
                                        <a href="hotel-detail.html">
                                            <img src="<%=basePath%>assets/images/hotels/2.png" class="full-width" alt="img">
                                        </a>
                                    </div>
                                    <div class="hotel-grid-caption padding-20 bg-custom-white p-relative">
                                        <h4 class="title fs-16"><a href="hotel-detail.html" class="text-custom-black">Forte Do Vale<small class="text-light-dark">Paris france</small></a></h4>
                                        <span class="price"><small>avg/night</small>$610</span>
                                        <div class="action">
                                            <a class="btn-second btn-small" href="hotel-detail.html">View</a>
                                            <a class="btn-first btn-submit" href="booking.html">Book</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide-item col-12">
                            <div class="hotel-grid">
                                <div class="hotel-grid-wrapper bx-wrapper">
                                    <div class="image-sec animate-img">
                                        <a href="hotel-detail.html">
                                            <img src="<%=basePath%>assets/images/hotels/3.png" class="full-width" alt="img">
                                        </a>
                                    </div>
                                    <div class="hotel-grid-caption padding-20 bg-custom-white p-relative">
                                        <h4 class="title fs-16"><a href="hotel-detail.html" class="text-custom-black">Gran Canaria<small class="text-light-dark">Paris france</small></a></h4>
                                        <span class="price"><small>avg/night</small>$220</span>
                                        <div class="action">
                                            <a class="btn-second btn-small" href="hotel-detail.html">View</a>
                                            <a class="btn-first btn-submit" href="booking.html">Book</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide-item col-12">
                            <div class="hotel-grid">
                                <div class="hotel-grid-wrapper bx-wrapper">
                                    <div class="image-sec animate-img">
                                        <a href="hotel-detail.html">
                                            <img src="<%=basePath%>assets/images/hotels/4.png" class="full-width" alt="img">
                                        </a>
                                    </div>
                                    <div class="hotel-grid-caption padding-20 bg-custom-white p-relative">
                                        <h4 class="title fs-16"><a href="hotel-detail.html" class="text-custom-black">Roosevelt Hotel<small class="text-light-dark">Paris france</small></a></h4>
                                        <span class="price"><small>avg/night</small>$100</span>
                                        <div class="action">
                                            <a class="btn-second btn-small" href="hotel-detail.html">View</a>
                                            <a class="btn-first btn-submit" href="booking.html">Book</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slide-item col-12">
                            <div class="hotel-grid">
                                <div class="hotel-grid-wrapper bx-wrapper">
                                    <div class="image-sec animate-img">
                                        <a href="hotel-detail.html">
                                            <img src="<%=basePath%>assets/images/hotels/5.png" class="full-width" alt="img">
                                        </a>
                                    </div>
                                    <div class="hotel-grid-caption padding-20 bg-custom-white p-relative">
                                        <h4 class="title fs-16"><a href="hotel-detail.html" class="text-custom-black">Costa Brava<small class="text-light-dark">Paris france</small></a></h4>
                                        <span class="price"><small>avg/night</small>$200</span>
                                        <div class="action">
                                            <a class="btn-second btn-small" href="hotel-detail.html">View</a>
                                            <a class="btn-first btn-submit" href="booking.html">Book</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Hotels -->
    <!-- End Copyright -->
	<div id="back-top" class="back-top">
      <a href="#top"><i class="flaticon-arrows"></i></a>
    </div>
    <!-- Place all Scripts Here -->
    <!-- jQuery -->
    <script src="<%=basePath%>assets/js/jquery.min.js"></script>
    <!-- Popper -->
    <script src="<%=basePath%>assets/js/popper.min.js"></script>
    <!-- Bootstrap -->
    <script src="<%=basePath%>assets/js/bootstrap.min.js"></script>
    <!-- Range Slider -->
    <script src="<%=basePath%>assets/js/ion.rangeSlider.min.js"></script>
    <!-- Slick Slider -->
    <script src="<%=basePath%>assets/js/slick.min.js"></script>
    <!-- Datepicker -->
    <script src="<%=basePath%>assets/js/datepicker.js"></script>
    <script src="<%=basePath%>assets/js/datepicker.en.js"></script>
    <!-- Isotope Gallery -->
    <script src="<%=basePath%>assets/js/isotope.pkgd.min.js"></script>
    <!-- Nice Select -->
    <script src="<%=basePath%>assets/js/jquery.nice-select.js"></script>
    <!-- magnific popup -->
    <script src="<%=basePath%>assets/js/jquery.magnific-popup.min.js"></script>
    <!-- Maps -->
    <script src="https://ditu.google.cn/maps/api/js?key=AIzaSyDnd9JwZvXty-1gHZihMoFhJtCXmHfeRQg"></script>
    <!-- Custom Js -->
    <script src="<%=basePath%>assets/js/custom.js"></script>

</body>
</html>