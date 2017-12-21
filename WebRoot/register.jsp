<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
		<meta charset="UTF-8">
		<!-- For Resposive Device -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title> 注册 </title>


		<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="images/them-logo/favicon-1.png">
		
		<!-- Main style sheet -->
		<link rel="stylesheet" href="css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" href="css/responsive.css">

		<!-- Fix Internet Explorer ______________________________________-->

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
			<script src="vendor/html5shiv.js"></script>
			<script src="vendor/respond.js"></script>
		<![endif]-->
	</head>
	
	<body>
	
		<div class="main-page-wrapper">
 		
			<!-- Header _________________________________ -->
			

			<!-- Theme Inner Banner ____________________________ -->
			

			<!-- Faq ____________________________ -->
			<section class="faq-page">
			
				<div class="container">
						<div class="them-logo float-left"><img src="images/them-logo/them-main-logo-1.png" alt="logo"></div>
						
						<div class="col-md-6 col-xs-12">
							<div class="request-form">
								
								<h2>注册信息</h2>
								
								<form action="${pageContext.request.contextPath}/userController/addUser.action" method="post">
									<h6>邮箱</h6>
									<input type="text" placeholder="邮箱" name="email"/>
									<h6>用户名</h6>
									<input type="text" placeholder="用户名" name="user_name"/>
									<h6>密码</h6>
									<input type="password" placeholder="密码" name="user_pwd"/>
									<button type="submit" class="hvr-float-shadow">注册</button>
								</form>
							</div>
						</div>
					
				</div>
			</section>

			<!-- Footer ____________________________ -->
			
			
		</div> <!-- /.main-page-wrapper -->
		

		<!-- Scroll Top Button -->
		<button class="scroll-top tran7s p-color-bg">
			<i class="fa fa-angle-up" aria-hidden="true"></i>
		</button>

		<!-- pre loader  -->
	 	<div id="loader-wrapper">
			<div id="loader"></div>
		</div>
	


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

	</body>
</html>