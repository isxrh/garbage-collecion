<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
           + request.getServerName() + ":" + request.getServerPort()
           + path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>资源回收-后台管理系统</title>
    <link rel="stylesheet"  href="<%=basePath%>css/bootstrap.css" />
    <link rel="stylesheet"  href="<%=basePath%>css/index.css" />
    <script src="<%=basePath%>js/jquery.js"></script>
    <script src="<%=basePath%>js/bootstrap.js"></script>
    <script src="<%=basePath%>js/userSetting.js"></script>
    <script type="text/javascript">
    $(function(){
    	// 点击切换页面
	     $("#product-type-set").click(function() {
            $("#frame-id").attr("src", "<%=basePath%>/customerManager/toCustomerManager");
        });
        $("#goodsManager").click(function() {
            $("#frame-id").attr("src", "<%=basePath%>/recyclerManager/toRecyclerManager");
        });
        $("#customer-set").click(function() {
            $("#frame-id").attr("src", "<%=basePath%>/enterpriseManager/toEnterpriseManager");
        });
        $("#garbage-order-set").click(function() {
            $("#frame-id").attr("src", "<%=basePath%>/productManager/toProductManager");
        });
    });
    </script>
</head>

<body>
    <div class="wrapper-cc clearfix">
        <div class="content-cc">
            <!-- header start -->
            <div class="clear-bottom head">
                <div class="container head-cc">
                    <p>资源回收<span>后台管理系统</span></p>
                    <div class="welcome">
                        <div class="left">欢迎您：&nbsp;</div>
                        <div class="right">${sessionScope.admin.username}</div>
                        <div class="exit"><a href="<%=basePath%>admin/logout"><span style="color:red">退出</span></a></div>
                    </div>
                </div>
            </div>
            <!-- header end -->
            <!-- content start -->
            <div class="container-flude flude-cc" id="a">
                <div class="row user-setting">
                    <div class="col-xs-2 user-wrap">
                        <ul class="list-group">
                            <li class="list-group-item active" name="userSet" id="product-type-set">
                                <i class="glyphicon glyphicon-lock"></i> &nbsp;用户管理
                            </li>
                            <li class="list-group-item" name="userPic" id="goodsManager">
                                <i class="glyphicon glyphicon-facetime-video"></i> &nbsp;回收员管理
                            </li>
                            <li class="list-group-item" name="userInfo" id="customer-set">
                                <i class="glyphicon glyphicon-user"></i> &nbsp;企业管理
                            </li>
                            <li class="list-group-item" name="adminSet" id="garbage-order-set">
                                <i class="glyphicon glyphicon-globe"></i> &nbsp;资源管理
                            </li>
                        </ul>
                    </div>
                    <div class="col-xs-10" id="userPanel">
                        <iframe id="frame-id" src="<%=basePath%>/customerManager/toCustomerManager" width="100%" height="100%" frameborder="0" scrolling="no">
                        </iframe>
                    </div>

                </div>
            </div>
            <!-- content end-->
        </div>
    </div>

</body>

</html>