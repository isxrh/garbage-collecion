<%--
  Author: krab
  Date: 2021/5/10
  Time: 22:19
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>订单</title>
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
                </div>
                <div class="col-sm-6 text-right">
                    <div class="right-side">
                        <ul class="custom-flex">
                            <li>
                                <a href="<%=basePath%>recycler/toLogin" class="text-custom-white">登陆</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>recycler/toRegister" class="text-custom-white">注册</a>
                            </li>
                            <li>
                                <a href="<%=basePath%>recycler/Lagout" class="text-custom-white">注销</a>
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
                                    <img src="<%=basePath%>assets/images/toor-logo.png" class="img-fluid image-fit" alt="img"   style="height: 40px">
                                </a>
                            </div>
                            <nav>
                                <ul class="custom-flex">

                                    <li class="menu-item ">
                                        <a href="<%=basePath%>recycler/toAllOrders" class="text-light-dark">浏览订单</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="<%=basePath%>recycler/toMyOrders" class="text-light-dark">我的订单</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="<%=basePath%>recycler/toInfo" class="text-light-dark">个人页面</a>
                                </ul>
                            </nav>
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

<!-- 待上门订单 start -->
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="page-header">
                <h3  style="color: #08a0d1">待接订单</h3>
            </div>
        </div>
    </div>
    <table class="table table-hover table-striped table-bordered">
        <tr style="color: #08a0d1" >
            <th class="text-center">企业名称</th>
            <th class="text-center">废品名称</th>
            <th class="text-center">重量</th>
            <th class="text-center">上门地址</th>
            <th class="text-center">上门时间</th>
            <th class="text-center">操作</th>
        </tr>

        <c:forEach items="${orders}" var="order" varStatus="status">
            <tr>
                <%--企业名称--%>
                <td class="text-center">${order.enterprise_name}</td>
                <%--废品名称--%>
                <td class="text-center">
                    <c:forEach items="${products}" var="product">
                        <c:if test="${order.product_id == product.id}">
                            ${product.product_name}
                        </c:if>
                    </c:forEach>
                </td>
                <%--废品重量--%>
                <td class="text-center">${order.product_weight}</td>
                <%--上门地址--%>
                <td class="text-center">
                    <c:forEach items="${childCustomers}" var="childCustomer">
                        <c:if test="${order.childcustomer_id == childCustomer.id}">
                            ${childCustomer.customer_address}
                        </c:if>
                    </c:forEach>
                </td>
                <%--上门时间--%>
                <td class="text-center">${order.order_appointmenttime}</td>
                <%--接单操作--%>
                <td class="text-center">
                    <a href="<%=basePath%>recycler/receive?id=${order.id}" >
                        <button class="btn" type="button" onclick="javaScript:return confirm('是否确认接单？');">
                            <span   style="color: #08a0d1" class="glyphicon" aria-hidden="true" onclick="javascript:window.location.reload();">接单</span>
                        </button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<!-- 待上门订单 end-->
<%--<% response.setIntHeader("Refresh", 1);%>--%>
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
