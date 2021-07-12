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
   <title>修改废品信息</title>
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
            </div>
            <div class="col-sm-6 text-right">
               <div class="right-side">
                  <ul class="custom-flex">
                     <li>
                        <a href="<%=basePath%>enterprise/toLogin" class="text-custom-white">登陆</a>
                     </li>
                     <li>
                        <a href="<%=basePath%>enterprise/toRegister" class="text-custom-white">注册</a>
                     </li>
                     <li>
                        <a href="<%=basePath%>enterprise/Lagout" class="text-custom-white">注销</a>
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
                        <a href="#">
                           <img src="<%=basePath%>assets/images/toor-logo.png" class="img-fluid image-fit" alt="img">
                        </a>
                     </div>
                     <nav>
                        <ul class="custom-flex">

                           <li class="menu-item ">
                              <a href="<%=basePath%>enterprise/toEnterOrders" class="text-light-dark">已接收订单</a>
                           </li>
                           <li class="menu-item ">
                              <a href="<%=basePath%>enterprise/toEnterProducts" class="text-light-dark">查看废品</a>
                           </li>
                           <li class="menu-item ">
                              <a href="<%=basePath%>enterprise/toEnterInfo" class="text-light-dark">企业个人页面</a>
                           </li>
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

<!-- 废品信息 start -->
<div class="container">
   <div class="container">
      <div class="panel panel-primary div-shadow">
         <div class="panel-body">
            <form action="<%=basePath%>enterprise/toChangeProducts" class="form-horizontal" method="post">

               <div class="form-group">
                  <label class="col-sm-3 control-label">废品名称：</label>
                  <div class="col-sm-9">
                     <input class="form-control" type="text" value=${product.product_name} name="product_name">
                     <input class="form-control" type="hidden" value=${product.id} name="product_id">
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-sm-3 control-label">废品单价：</label>
                  <div class="col-sm-9">
                     <input class="form-control" type="text" value=${product.product_price} name="product_price">
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-sm-3 control-label">废品种类：</label>
                  <div class="col-sm-9">
                     <input class="form-control" type="text" value=${product.product_type} name="product_type">
                  </div>
               </div>

               <div class="form-group">
                  <label class="col-sm-3 control-label">废品图片：</label>
                  <div class="col-sm-4">
                     <img src="<%=basePath%>${product.product_image}" class="img-rounded"  alt="img" name="product_image_show" height="150">
                     <br>
                     <input class="form-control" type="file"  name="product_image">

                     <script>
                        var product = document.getElementsByName("product_image")[0];
                        product.onchange = function () {
                           var that = this;
                           var src = window.URL.createObjectURL(that.files[0])
                           var show = document.getElementsByName("product_image_show")[0];
                           show.src=src;
                        }
                     </script>

                  </div>
               </div>


               <div class="form-group">
                  <div class="col-sm-3">
                  </div>
                  <div class="col-sm-9 padding-left-0">
                     <div class="col-sm-4">
                        <button type="submit" class="btn btn-info">修&nbsp;&nbsp;改</button>
                     </div>
                     <div class="col-sm-4">
                        <button type="reset" class="btn btn-info">取&nbsp;&nbsp;消</button>
                     </div>
                  </div>
               </div>
            </form>
            <!-- login form end -->
         </div>
      </div>
   </div>
</div>
<!-- 废品信息 end-->


<%--尾页 --%>
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
