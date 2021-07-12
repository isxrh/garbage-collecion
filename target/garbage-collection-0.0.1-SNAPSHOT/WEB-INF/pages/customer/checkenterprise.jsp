<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>企业详细</title>
    <title>Title</title>

    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.css" />
    <link rel="stylesheet" href="<%=basePath%>css/style.css" />
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.js"></script>
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
                                <a href="<%=basePath%>customer/toLogin" class="text-custom-white">登陆</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>customer/toRegister" class="text-custom-white">注册</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>customer/Lagout" class="text-custom-white">注销</a>
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
                            <a href="#">
                                <img src="<%=basePath%>assets/images/toor-logo.png" class="img-fluid image-fit" alt="img" style="height: 40px">
                            </a>
                        </div>
                        <div class="main-menu">
                            <div class="logo">
                                <a >
                                    <img src="<%=basePath%>assets/images/toor-logo.png" class="img-fluid image-fit" alt="img " style="height: 40px" >
                                </a>
                            </div>
                            <nav>
                                <ul class="custom-flex">

                                    <li class="menu-item ">
                                        <a href="<%=basePath%>customer/searchCompany" class="text-light-dark">浏览企业</a>
                                    <li class="menu-item ">
                                        <a href="<%=basePath%>customer/vieworder" class="text-light-dark">订单查询</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="<%=basePath%>customer/info" class="text-light-dark">个人页面</a>

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
<br>
<br>
<section class="section-padding bg-light-white">
    <div class="container">
        <div class="row">
            <aside class="col-lg-4">
                <div class="sidebar_wrap mb-md-80">
                    <div class="sidebar">
                        <div class="sidebar_widgets mb-xl-30">
                            <div class="widget_title bg-custom-blue">
                                <h5 class="no-margin text-custom-white">${enterprise.enterprise_name}</h5>
                            </div>
                            <ul class="categories custom">
                                <li>
                                    <a href="<%=basePath%>customer/check?id=${enterprise.id}&&name=${enterprise.enterprise_name}" class="text-custom-black fs-14">所有回收种类</a>
                                </li>
                                <if test="list != null and list.size>0">
                                    <c:forEach items="${typelist}" var="type">
                                        <li>
                                            <a href="<%=basePath%>customer/checktype?id=${enterprise.id}&&name=${enterprise.enterprise_name}&&type=${type}" class="text-custom-black fs-14">${type}</a>
                                        </li>
                                    </c:forEach>
                                </if>
                            </ul>
                        </div>
                    </div>
                </div>
            </aside>
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-12">
                        <div class="listing-top-heading mb-xl-20">
                            <h6 class="no-margin text-custom-black">回收列表</h6>
                            <%-- 点击添加按钮：转到添加废品信息界面 --%>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${products}" var="product">
                        <div class="col-md-6">
                            <div class="cruise-grid mb-xl-30">
                                <div class="cruise-grid-wrapper bx-wrapper">
                                    <div class="image-sec animate-img">
                                        <a href="#">
                                            <img src="<%=basePath%>${product.product_image}" class="img-rounded" alt="img">
                                        </a>
                                    </div>
                                    <div class="cruise-grid-caption padding-20 bg-custom-white p-relative">
                                        <h4 class="title fs-16 no-margin"><a href="#" class="text-custom-black">${product.product_name}</a></h4>
                                        <span class="price"><small>回收价格</small>${product.product_price}</span>
                                            <%-- 点击修改按钮：转到修改废品信息界面 --%>
                                        <br>
                                        <a class="btn-second btn-small" href="<%=basePath%>book/toOrder?id=${product.id}" tabindex="0">加入预约</a>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Start Blog -->
<%--<section class="section-padding bg-light-white">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>

<%--            <div class="col-lg-8">--%>
<%--                <div class="row">--%>
<%--                    <div class="col-12">--%>
<%--                        <div class="listing-top-heading mb-xl-20">--%>
<%--                            <h6 class="no-margin text-custom-black">回收列表</h6>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <c:forEach items="${products}" var="product">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <div class="cruise-grid mb-xl-30">--%>
<%--                            <div class="cruise-grid-wrapper bx-wrapper">--%>
<%--                                <div class="image-sec animate-img">--%>
<%--                                    <a href="#">--%>
<%--                                        <img src="<%=basePath%>${product.product_image}" class="full-width" alt="img">--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                                <div class="cruise-grid-caption padding-20 bg-custom-white p-relative">--%>
<%--                                    <h4 class="title fs-16 no-margin"><a href="#" class="text-custom-black">${product.product_name}</a></h4>--%>
<%--                                    <span class="price"><small>回收价格</small>${product.product_price}</span--%>
<%--                                    <div class="action">--%>
<%--                                        <br>--%>
<%--                                        <a class="btn-second btn-small" href="<%=basePath%>book/toOrder?id=${product.id}" tabindex="0">加入预约</a>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    </c:forEach>--%>
<%--                </div>--%>



<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<!-- End Blog -->
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
