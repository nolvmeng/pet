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
				<div class="theme-main-menu">
					<div class="container">
							<div class="main-menu clear-fix">

							<div class="search-button-content float-right">
								
					   			<button class="search b-p-bg-color" id="search-button"><i class="fa fa-search" aria-hidden="true"></i></button>
					   			<div class="search-box tran5s" id="searchWrapper">
					   				<button id="close-button" class="p-color"><i class="fa fa-times" aria-hidden="true"></i></button>
					   				<div class="container">
					   					<img src="<%=path%>/images/them-logo/them-main-logo-1.png" alt="Logo">
					   					<form action="#">
					   						<input type="text" placeholder="Search....">
					   						<button class="p-bg-color"><i class="fa fa-search" aria-hidden="true"></i></button>
					   					</form>
					   				</div>
					   			</div> <!-- /.search-box -->
					   		</div> <!-- /.right-content -->
					   		<div class="them-logo float-left"><a href="#"><img src="<%=path%>/images/them-logo/them-main-logo-1.jpg" alt="logo"></a></div>

							<!-- Menu -->
							<nav class="navbar">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed tran3s" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
										<span class="sr-only tran3s">Toggle navigation</span>
										<span class="icon-bar tran3s"></span>
										<span class="icon-bar tran3s"></span>
										<span class="icon-bar tran3s"></span>
									</button>
								</div>
								
								<!-- Collect the nav links, forms, and other content for toggling -->
								<div class="collapse navbar-collapse" id="navbar-collapse-1">
									<ul class="nav navbar-nav">
										<li class="dropdown-holder current-page-item Active-manu"><a href="<%=path%>/index.action"> 首页 </a>
											
										</li>

										<li class="dropdown-holder"><a href="#">Gallery</a>
											<ul class="sub-menu">
												<li><a href="gallery-v1.html" class="tran3s">Gallery Version one</a></li>
												<li><a href="gallery-v2.html" class="tran3s">Gallery Version Two</a></li>
												<li><a href="gallery-v3.html" class="tran3s">Gallery Version Three</a></li>
											</ul>
										</li>
									   
										<li class="dropdown-holder"><a href="#">pages</a>
											<ul class="sub-menu">
												<li><a href="about-us.html" class="tran3s">About Us</a></li>
												<li><a href="team.html" class="tran3s">Our Team</a></li>
												<li><a href="testimonial.html" class="tran3s">Testimonial</a></li>
												<li><a href="faq.html" class="tran3s">Faq</a></li>
												<li><a href="404.html" class="tran3s">Error page</a></li>
											</ul>
										</li>

										<li class="dropdown-holder"><a href="#">Services</a>
											<ul class="sub-menu">
												<li><a href="service-v1.html" class="tran3s">Services</a></li>
												<li><a href="service-details.html" class="tran3s">Service Details</a></li>
											</ul>
										</li>

										<li class="dropdown-holder"><a href="blog-v1.html" class="tran3s">论坛</a>
											
										</li>
									   
										<li class="dropdown-holder"><a href="#">宠物领养</a>
											<ul class="sub-menu">
												<li><a href="<%=path %>/registController/getAdoptBycategory.action" class="tran3s">领养列表</a></li>
											</ul>
										</li>
									   
										
									</ul>
								</div><!-- /.navbar-collapse -->
							</nav>
						</div> <!-- / menu-skew-div -->
					</div> <!-- /.container main-menu -->
				</div> <!-- /.main-menu -->
			</section>

			<!-- Theme Inner Banner ____________________________ -->
			<section class="">
				
				<div class="inner-banner-bottom">
					<div class="container">
						<ul>
							<li><a href="index.html">首页</a></li>
							<li><span>-</span></li>
							<li><a href="shop.html">宠物列表</a></li>
							<li><span>-</span></li>
							<li><a href="#">宠物详情</a></li>
						</ul>
					</div>
				</div>
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

			<!-- Footer ____________________________ -->
			<footer>
				<div class="container">
					<div class="top-footer row">
						<div class="col-md-5 col-sm-7 col-xs-12 footer-logo">
							<a href="#"><img src="<%=path%>/images/them-logo/them-main-logo-2.jpg" alt="Logo"></a>
							<p><span class="p-color">myPet</span> was established in 2017 by Pet business veterans, Rod Davies and Matthew Levington, the journey began when founders Matthew Levington and Rod Davies, met up in 2017 over a beer</p>
							<ul class="icon">
								<li><a href="" class="tran3s"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="" class="tran3s"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								<li><a href="" class="tran3s"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
								<li><a href="" class="tran3s"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							</ul>

							<ul class="policy">
								<li><a href="" class="tran3s">Privacy Policy </a></li>
								<li><a>|</a></li>
								<li><a href="" class="tran3s">Legal Policy</a></li>
							</ul>
						</div> <!-- /.footer-logo -->

						<div class="col-md-4 col-sm-5 col-xs-12 footer-list">
							<h5>Important Links</h5>

							<ul>
								<li><a href="#" class="tran3s">Support</a></li>
								<li><a href="about-us-v1.html" class="tran3s">About us </a></li>
								<li><a href="project-v1.html" class="tran3s">Project</a></li>
								<li><a href="shop.html" class="tran3s">Shop</a></li>
								<li><a href="#" class="tran3s">Performance</a></li>
								<li><a href="blog-v1.html" class="tran3s">News</a></li>
								<li><a href="#" class="tran3s">Pet Health Food</a></li>
							</ul>
							<ul>
								<li><a href="#" class="tran3s">Pet</a></li>
								<li><a href="#" class="tran3s">Our History</a></li>
								<li><a href="#" class="tran3s">What We Do</a></li>
								<li><a href="#" class="tran3s">Living Areas</a></li>
								<li><a href="#" class="tran3s">Pet Product</a></li>
								<li><a href="contact-us.html" class="tran3s">Contact us</a></li>
							</ul>
						</div> <!-- /.footer-list -->

						<div class="col-md-3 col-xs-12 footer-news">
							<h5>News Update</h5>

							<ul>
								<li>
									<h6><a href="blog-details.html" class="tran3s">Prefinished Solid Hardwood Flooring</a></h6>
									<span>january 02,2017</span>
								</li>
								<li>
									<h6><a href="blog-details.html" class="tran3s">Latst pet care in summer 12 care them well</a></h6>
									<span>january 02,2017</span>
								</li>
							</ul>
						</div> <!-- /.footer-news -->
					</div> <!-- /.top-footer -->
				</div> <!-- /.container -->

				<div class="bottom-footer">
					<div class="container">
						<p class="float-left">Copyright &copy; 2017 <a href="#" class="tran3s p-color"> myPet</a> All Rights Reserved by <a href="https://themeforest.net/user/unifytheme/portfolio" class="tran3s p-color" target="_blank"> Unifytheme </a></p>
						<form action="#" class="float-right">
							<input type="text" placeholder="Your Email">
							<button class="tran3s p-bg-color">Subscribe</button>
						</form>
					</div> <!-- /.container -->
				</div> <!-- /.bottom-footer -->
			</footer>
			
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