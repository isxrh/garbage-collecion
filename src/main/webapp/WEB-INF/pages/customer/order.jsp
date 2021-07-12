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


<!-- Start Blog -->
<section class="section-padding bg-light-white listing-details">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="listing-details-inner bx-wrapper bg-custom-white padding-20">
          <div class="col-12">
            <div class="quick-quote bx-wrapper padding-20 mb-xl-30">
              <h5 class="text-custom-black">上门回收</h5>
              <form class="form-horizontal" action="<%=basePath%>book/retrieve" method="post">
                <div class="row">
                  <div class="col-12">
                    <div class="form-group">
                      <label class="fs-14 text-custom-black fw-500">废品名称</label>
                      <input type="hidden" name="product_id" value="${product.id}">
                      <input type="text" name="product_name" class="form-control form-control-custom"  readonly="true" value="${product.product_name}">
                    </div>
                    <div class="form-group">
                      <label class="fs-14 text-custom-black fw-500">废品重量(斤)</label>
                      <input type="text" name="product_weight" class="form-control form-control-custom"   >
                    </div>
                    <div class="form-group">
                      <label class="fs-14 text-custom-black fw-500">上门时间</label>
                      <div class="input-group group-form">
                        <input type="text" name="appointmenttime" class="form-control form-control-custom datepickr" placeholder="mm/dd/yy" readonly="">
                        <span class="input-group-append">
                         <i class="far fa-calendar"></i>
                        </span>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="fs-14 text-custom-black fw-500">回收地址&手机号&姓名 &nbsp;&nbsp
                        <a href="#" data-toggle="modal" data-target="#modifyAddAddressModal" style="color: #0f92d4">添加其他地址</a>
                      </label>
                      <div class="group-form">
                        <select class="form-control form-control-custom" name="childcustomer_id">
                          <c:forEach items="${list}" var="l">
                            <option value="${l.id}">
                                姓名：${l.customer_name}&nbsp;手机号：${l.customer_phone}&nbsp;地址：${l.customer_address}
                            </option>
                          </c:forEach>
                        </select>
                      </div>
                    </div>
                    <br>
                    <button type="submit" class="btn-first btn-submit  btn-height" style="width: 200px">预约</button>
                    <button  type="button" class="btn-first btn-submit  btn-height"style="width: 200px;margin-left: 500px " onclick="history.back(-1);">返回</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
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

<!-- 添加地址模态框 start -->
<div class="modal fade" id="modifyAddAddressModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="no-margin " style="color:#4f9bdd" id="myModalLabel" data-target="#modifyAddAddressModal" >添加地址</h3>
      </div>

      <form action="<%=basePath%>customer/addAddress" class="form-horizontal" method="post">

        <div class="modal-body">

            <label class="col-sm-3 control-label" >姓名：</label>
            <div class="col-sm-6">
              <input type="text" name="Customer_name" style="width: 430px;" >
              <input type="hidden" name="Customer_id" value="4">
            </div>

            <label class="col-sm-3 control-label" >电话：</label>
            <div class="col-sm-6">
              <input type="text" name="Customer_phone" style="width: 430px;">

          </div>

            <label class="col-sm-3 control-label">地址：</label>
            <div class="col-sm-6">
              <input type="text" name="Customer_address" style="width: 430px;" >
            </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn-second btn-small" data-dismiss="modal" aria-label="Close">关&nbsp;&nbsp;闭</button>
          <button type="reset" class="btn-second btn-small">重&nbsp;&nbsp;置</button>
          <button type="submit" class="btn-second btn-small">提&nbsp;&nbsp;交</button>
        </div>
      </form>
    </div>
  </div>
</div>
<!-- 添加地址模态框 end -->
<script>
  function backAndFresh(){
    var url =document.referrer;
    window.location=url;
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
