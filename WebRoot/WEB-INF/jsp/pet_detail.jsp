<?xml version="1.0" encoding="utf-8" ?>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.pet.pojo.Regist" %>
<%@page import="com.pet.pojo.Img" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Set" %>
<%@page import="java.util.Map" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<meta charset="UTF-8">
		<!-- For Resposive Device -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title> Mypet </title>


		<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="<%=path%>/<%=path%>/images/them-logo/favicon-1.png">
		
		<!-- Main style sheet -->
		<link rel="stylesheet" href="<%=path%>/css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" href="<%=path%>/css/responsive.css">

		<!-- Fix Internet Explorer ______________________________________-->

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
			<script src="<%=path%>/vendor/html5shiv.js"></script>
			<script src="<%=path%>/vendor/respond.js"></script>
		<![endif]-->
	</head>
	
<body>
	
		<div class="main-page-wrapper">

			<!-- Header _________________________________ -->
			<section class="header-section">
				<div class="top-header top-header-version-two">
					<div class="container">
						<div class="clear-fix">
							<ul class="float-left top-header-left">
								
							</ul>
							<ul class="float-right top-header-right">
								
								<li><a href="#">欢迎您！周博</a></li>
								
								<li><a href="login.html">登出</i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</section>
				
				<!-- Theme Main Menu ____________________________ -->
						

			<section class="header-section">
				<!-- Header _________________________________ -->
				<jsp:include page="./inclu/header.jsp" />
				
				<!-- Theme Main Menu ____________________________ -->
				<jsp:include page="./inclu/MainMenu_1.jsp" />
			</section>

			<!-- shop-page-details ____________________________ -->
			<section class="shop-page-details">
				<div class="container">
					<div class="single-product-details">
						<div class="row">
							<div class="col-sm-6 col-xs-12 product-order-img">
							<%Regist regist = (Regist)request.getAttribute("regist"); 
							Map<Integer,List<Img>> imgs =(Map<Integer,List<Img>>)request.getAttribute("imgs");
							%>
								<div class="vig-img"><img src="http://forpet.oss-cn-shenzhen.aliyuncs.com/post/<%=imgs.get(regist.getCpet().getC_id()).get(0).getKey() %>" alt="image"></div>
								<div class="row">
									<div class="col-xs-4">
										<div><img src="<%=path%>/images/shop/img-21.jpg" alt="image"></div>
									</div>
									<div class="col-xs-4">
										<div><img src="<%=path%>/images/shop/img-22.jpg" alt="image"></div>
									</div>
									<div class="col-xs-4">
										<div><img src="<%=path%>/images/shop/img-23.jpg" alt="image"></div>
									</div>
								</div>
							</div>
							
							<div class="col-sm-6 col-xs-12">
								<div class="product-order-details">
									<h3><%=regist.getCpet().getNickname() %></h3>
									<ul class="rating-and-tag">
										<h5>登记用户：<%=regist.getUser().getUser_name() %></h5>
							
										<h5>登记时间：<%=regist.getTs() %></h5>
									</ul>
									<div class="rating-and-tag">
										<ul class="tag">
											<li>种类:  <span class="p-color"><%=regist.getCpet().getCategory() %></span></li>
										</ul><t/>
										<ul class="tag">
											<li>品种:  <span class="p-color"><%=regist.getCpet().getType() %></span></li>
										</ul>
										<ul class="tag">
											<li>地区:  <span class="p-color"><%=regist.getCpet().getFrom() %></span></li>
										</ul>
									</div>
									
									<p>描述:<br/><%=regist.getCpet().getDesc() %></p>
									<div class="value-decrease-and-button">
										
										
										<a href="#" class="hvr-float-shadow">联系领养</a>
									</div>
								</div> <!-- /.product-order-details -->
							</div> <!-- /.single-product-details -->
						</div>

						<div class="row">
							<div class="col-md-9 col-xs-12">
								<div class="review-tab">
									<ul class="nav nav-tabs">
										<li class="active"><a data-toggle="tab" href="#home">Product Description</a></li>
										<li><a data-toggle="tab" href="#menu1">Additional information</a></li>
										<li><a data-toggle="tab" href="#menu2">Reviews (1)</a></li>
									</ul>
									<div class="tab-content">
										<div id="home" class="tab-pane fade in active">
									    	<p>Complete feed for dogs - For adult and mature large breed dogs (from 26 to 44 kg). Over 15 months old. Digestive sensitivity</p>
									    	<h6>Digestive Health</h6>
									    	<p>Reinforced digestive tolerance thanks to very high quality protein sources and MOS which promote a balance in the intestinal flora and improve stool quality.</p>
										</div>
									  	<div id="menu1" class="tab-pane fade">
									    	<h4>Ten steps to making </h4>
									    	<ul>
									    		<li>1. Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
									    		<li>2. Suspendisse accumsan nunc velit, vel ullamcorper</li>
									    		<li>3. Quisque mollis tellus diam, non blandit magna accumsan quis.</li>
									    		<li>4. Sed ultricies eleifend felis pretium cursus.</li>
									    		<li>5. Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
									    		<li>6. Suspendisse accumsan nunc velit, vel ullamcorper</li>
									    		<li>7. Quisque mollis tellus diam, non blandit magna accumsan quis.</li>
									    		<li>8. Sed ultricies eleifend felis pretium cursus.</li>
									    	</ul>
									  	</div>
									  	<div id="menu2" class="tab-pane fade">
									    	<div id="review">
												<div class="single-review clearfix">
													<img src="<%=path%>/images/home/img-5.jpg" alt="" class="float-left">
													<div class="text float-left">
														<div class="clearfix">
															<div class="float-left">
																<span>March 14, 2017</span>
																<span>10 days ago</span>
																<h6>Lindsay Lohan</h6>
															</div>
															<ul class="float-right">
																<li><i class="fa fa-star" aria-hidden="true"></i></li>
																<li><i class="fa fa-star" aria-hidden="true"></i></li>
																<li><i class="fa fa-star" aria-hidden="true"></i></li>
																<li><i class="fa fa-star" aria-hidden="true"></i></li>
																<li><i class="fa fa-star" aria-hidden="true"></i></li>
															</ul>
														</div> <!-- /.clearfix -->
														<p>I am glad that I have taken the PHP Framework course here at Scholar. The teacher has been amazing throughtout the course. They have outstanding resources to  help you. In addition.</p>
													</div> <!-- /.text -->
												</div> <!-- /.single-review -->
											</div> <!-- /.review -->
									  	</div>
									</div>
								</div> <!-- /.review-tab -->
								
								
								
							</div>
						</div>
					</div>
				</div>
			</section> <!-- / .shop-page-details -->

		     <!--fo     <!--footer  -->
        <jsp:include page="./inclu/footer.jsp" />div> <!-- /.main-page-wrapper -->
		

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
		<script src="<%=path%>/vendor/jquery-2.2.3.min.js"></script>
		<!-- bootstrap-select.min.js -->
		<script src="<%=path%>/vendor/bootstrap-select-1.10.0/dist/js/bootstrap-select.min.js"></script>
		<!-- bootstrap js -->
		<script src="<%=path%>/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- camera js -->
		<script src="<%=path%>/vendor/Camera-master/scripts/camera.min.js"></script>
		<script src="<%=path%>/vendor/Camera-master/scripts/jquery.easing.1.3.js"></script>
		<!-- Owl carousel -->
		<script src="<%=path%>/vendor/OwlCarousel2/dist/owl.carousel.min.js"></script>
		<!-- appear & countTo -->
		<script src="<%=path%>/vendor/jquery.appear.js"></script>
		<script src="<%=path%>/vendor/jquery.countTo.js"></script>
		<!-- fancybox -->
		<script src="<%=path%>/vendor/fancybox/dist/jquery.fancybox.min.js"></script>
		<!-- Gallery - isotop -->
		<script type="text/javascript" src="<%=path%>/vendor/isotope.pkgd.min.js"></script>
		<!-- WOW js -->
		<script type="text/javascript" src="<%=path%>/vendor/WOW-master/dist/wow.min.js"></script>
		<!-- Circle Progress -->
		<script type="text/javascript" src="<%=path%>/vendor/circle-progress.js"></script>
		<!-- Style js -->
		<script src="<%=path%>/js/custom.js"></script>
</body>
</html>