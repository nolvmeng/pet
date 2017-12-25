<%@page import="com.sun.corba.se.spi.orb.DataCollector"%>
<%@page import="com.pet.convert.DateToStr"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.pet.pojo.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="images/them-logo/favicon-1.png">
		
		<!-- Main style sheet -->
		<link rel="stylesheet" href="css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" href="css/responsive.css">

		<link href="css2/css/bootstrap.min.css" rel="stylesheet">
    <link href="css2/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css2/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css2/css/animate.css" rel="stylesheet">
    <link href="css2/css/style.css" rel="stylesheet">

    <style type="text/css">
    	body{
    		background: white;
    	}
    </style>
	

  </head>
  
  <body>
    <div class="main-page-wrapper">

			<!-- Header _________________________________ -->
			<section class="header-section">
				<!-- Header _________________________________ -->
				<jsp:include page="./inclu/header.jsp" />
				
				<!-- Theme Main Menu ____________________________ -->
				<jsp:include page="./inclu/MainMenu_1.jsp" />
			</section>

									
			<!-- We are myPet ____________________________ -->
			<section class="we-are-my-pet-section">
				<div class="container">
					<div class="row">
						<div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>个人信息 <small>修改与查看</small></h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="form_basic.html#">Config option 1</a>
                                    </li>
                                    <li><a href="form_basic.html#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <% User user= (User)request.getAttribute("user"); 
                   
                        %>
                        <div class="ibox-content">
                            <form method="get" class="<%=path%>/userController/update.action">
                                <div class="form-group"><label class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" name="user_name" value="<%=user.getUser_name() %>"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">邮箱</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" name="email" value="<%=user.getEmail() %>"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">注册时间</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" value="<%=DateToStr.convertDate(user.getUser_reg_date())%>" readonly="true"></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">用户状态</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" value=""></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">角色</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" value=""></div>
                                </div>
                                <div class="form-group"><label class="col-sm-2 control-label">描述</label>
                                    <div class="col-sm-10"><input type="text" class="form-control" value=""></div>
                                </div>
                                <div class="col-sm-4 col-sm-offset-2">
                                        <button class="btn btn-primary" type="submit">确认修改</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>	
			</section>

				
					
		</div> <!-- /.main-page-wrapper -->
		

	
	


		<!-- js file -->
		<!-- Main js file/jquery -->
		<script src="vendor/jquery-2.2.3.min.js"></script>
		<!-- bootstrap-select.min.js -->
		<script src="vendor/bootstrap-select-1.10.0/dist/js/bootstrap-select.min.js"></script>
		<!-- bootstrap js -->
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- camera js -->
		<script src="vendor/Camera-master/scripts/camera.min.js"></script>
		<script src="vendor/Camera-master/scripts/jquery.easing.1.3.js"></script>
		<!-- Owl carousel -->
		<script src="vendor/OwlCarousel2/dist/owl.carousel.min.js"></script>
		<!-- appear & countTo -->
		<script src="vendor/jquery.appear.js"></script>
		<script src="vendor/jquery.countTo.js"></script>
		<!-- fancybox -->
		<script src="vendor/fancybox/dist/jquery.fancybox.min.js"></script>
		<!-- Gallery - isotop -->
		<script type="text/javascript" src="vendor/isotope.pkgd.min.js"></script>
		<!-- WOW js -->
		<script type="text/javascript" src="vendor/WOW-master/dist/wow.min.js"></script>
		<!-- Circle Progress -->
		<script type="text/javascript" src="vendor/circle-progress.js"></script>
		<!-- Style js -->
		<script src="js/custom.js"></script>

		<!-- Mainly scripts -->
    <script src="css2/js/jquery-2.1.1.js"></script>
    <script src="css2/js/bootstrap.min.js"></script>
    <script src="css2/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="css2/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="css2/js/inspinia.js"></script>
    <script src="css2/js/plugins/pace/pace.min.js"></script>

    <!-- iCheck -->
    <script src="css2/js/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(document).ready(function () {
                $('.i-checks').iCheck({
                    checkboxClass: 'icheckbox_square-green',
                    radioClass: 'iradio_square-green',
                });
            });
        </script>
  </body>
</html>
