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
    <title>预约订单</title>
    <title>Title</title>

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
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.css" />
    <link rel="stylesheet" href="<%=basePath%>css/style.css" />
    <script src="<%=basePath%>js/jquery.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.js"></script>

</head>
<body >
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
                                    <img src="<%=basePath%>assets/images/toor-logo.png" class="img-fluid image-fit" alt="img"  style="height: 40px">
                                </a>
                            </div>
                            <nav>
                                <ul class="custom-flex">

                                    <li class="menu-item ">
                                        <a href="<%=basePath%>customer/searchCompany" class="text-light-dark">浏览企业</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="<%=basePath%>customer/vieworder" class="text-light-dark">订单查询</a>
                                    </li>
                                    <li class="menu-item ">
                                        <a href="<%=basePath%>customer/info" class="text-light-dark">个人中心</a>

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
<section class="section-padding bg-light-white listing-details">
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="page-header" style="margin-bottom: 0px;color: #08a0d1">
                <h3>未完成订单</h3>
            </div>
        </div>
    </div>
    <table class="table table-hover table-striped table-bordered">
        <tr style="color:#08a0d1;font-size:14px">
            <th>企业名称</th>
            <th>废品名称</th>
            <th>废品重量(斤)</th>
            <th>上门地址</th>
            <th>上门时间</th>
            <th>下单时间</th>
            <th>订单状态</th>
            <th>派送</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${outorders}" var="order">
            <tr style="font-size:12px;font-weight: lighter">
                <th>${order.enterprise_name}</th>
                <th><c:forEach items="${products}" var="p">
                    <c:if test="${p.id == order.product_id}">
                        ${p.product_name}
                    </c:if>
                </c:forEach>
                </th>
                <th>${order.product_weight}</th>
                <th>
                <c:forEach items="${address}" var="a">
                    <c:if test="${a.id == order.childcustomer_id}">
                        ${a.customer_name}&nbsp;${a.customer_phone}&nbsp;${a.customer_address}
                    </c:if>
                </c:forEach>
                </th>
                <th>${order.order_appointmenttime}</th>
                <th>${order.order_starttime}</th>
                <th>${order.order_status}</th>
                <th>
                    <c:forEach items="${recyclers}" var="recycler">
                        <c:if test="${recycler.id == order.recycler_id}">
                            <a href="#" data-toggle="modal" data-target="#Recycler" style="color:#08a0d1" onclick="
                                    document.getElementById('recycler_name').value = '${recycler.recyclerName}';
                                    document.getElementById('recycler_phone').value = '${recycler.recyclerPhone}';
                                    " >详情</a>
                        </c:if>
                    </c:forEach>

                </th>
                <th>
                    <a href="<%=basePath%>customer/confirm?id=${order.id}" ><button type="button" class="btn-second btn-small"  >确认</button></a>
                    <a href="<%=basePath%>customer/cancel?id=${order.id}"> <button type="button" class="btn-second btn-small" >取消</button></a>
                </th>
            </tr>
        </c:forEach>
    </table>
</div>
<!-- 待上门订单 end-->

<!-- 已完成订单 start -->
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="page-header" style="margin-bottom: 0px;color: #08a0d1">
                <h3>已完成订单</h3>
            </div>
        </div>
    </div>
    <table class="table table-hover table-striped table-bordered">
        <tr style="color:#08a0d1;font-size:14px">
            <th>企业名称</th>
            <th>废品名称</th>
            <th>废品重量(斤)</th>
            <th>上门地址</th>
            <th>上门时间</th>
            <th>下单时间</th>
            <th>完成时间</th>
            <th>订单状态</th>
            <th>派送</th>
        </tr>
        <c:forEach items="${comorders}" var="order">
            <tr  style="font-size:12px;font-weight: lighter">
                <th>${order.enterprise_name}</th>
                <th><c:forEach items="${products}" var="p">
                    <c:if test="${p.id == order.product_id}">
                        ${p.product_name}
                    </c:if>
                </c:forEach>
                </th>
                <th>${order.product_weight}</th>
                <th>
                    <c:forEach items="${address}" var="a">
                        <c:if test="${a.id == order.childcustomer_id}">
                            ${a.customer_name}&nbsp;${a.customer_phone}&nbsp;${a.customer_address}
                        </c:if>
                    </c:forEach>
                </th>
                <th>${order.order_appointmenttime   }</th>
                <th>${order.order_starttime}</th>
                <th>${order.order_endtime}</th>
                <th>${order.order_status}</th>
                <th>
                    <c:forEach items="${recyclers}" var="recycler">
                        <c:if test="${recycler.id == order.recycler_id}">
                            <a href="#" data-toggle="modal" data-target="#Recycler" style="color:#08a0d1" onclick="
                                    document.getElementById('recycler_name').value = '${recycler.recyclerName}';
                                    document.getElementById('recycler_phone').value = '${recycler.recyclerPhone}';
                                    " >详情</a>
                        </c:if>
                    </c:forEach>

                </th>
            </tr>
        </c:forEach>


    </table>
</div>
<!-- Start Blog -->
    <!-- 添加地址模态框 start -->
    <div class="modal fade" id="Recycler" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="no-margin " style="color:#4f9bdd" id="myModalLabel" data-target="#Recycler" >派送详情</h3>
                </div>
                    <div class="modal-body">

                        <label  style="color:#4f9bdd" >回收员姓名：</label> <label   style="color:#4f9bdd" > </label>
                        <input type="text" class="form-control" id="recycler_name" readonly="true" />

                        <label  style="color:#4f9bdd" >回收员电话：</label><label  style="color:#4f9bdd" > </label>
                        <input type="text" class="form-control" id="recycler_phone" readonly="true"/>
                        <br>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn-second btn-small" data-dismiss="modal" aria-label="Close">关&nbsp;&nbsp;闭</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- 添加地址模态框 end -->

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>



<!-- End Blog -->
<div id="back-top" class="back-top">
    <a href="#top"><i class="flaticon-arrows"></i></a>
</div>
<!-- Place all Scripts Here -->
    <script type="text/javascript">
        function editRecycler(id) {
            $.ajax({
                type:"get",
                url:"<%=basePath%>customer/getRecycler",
                success:function(data) {
                    alert(data);

                }
            });
        }



    </script>

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
