<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html" lang="en">

<head>

		<meta charset="UTF-8">
		<!-- For Resposive Device -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title> Mypet </title>


		<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="<%=path%>/images/them-logo/favicon-1.png">
		
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

			<!-- Theme V-2 Menu and Banner ____________________________ -->
			<section class="theme-v-2-menu-and-banner">

				<!-- Theme Main Menu ____________________________ -->
				<div class="theme-main-menu theme-main-menu-version-two">
					<div class="container">
						<div class="main-menu clear-fix">

							<div class="search-button-content float-right">
								
					   			<button class="search b-p-bg-color" id="search-button"><i class="fa fa-search" aria-hidden="true"></i></button>
					   			<div class="search-box tran5s" id="searchWrapper">
					   				<button id="close-button" class="p-color"><i class="fa fa-times" aria-hidden="true"></i></button>
					   				<div class="container">
					   					<img src="<%=path%>/images/them-logo/them-main-logo-1.jpg" alt="Logo">
					   					<form action="#">
					   						<input type="text" placeholder="Search....">
					   						<button class="p-bg-color"><i class="fa fa-search" aria-hidden="true"></i></button>
					   					</form>
					   				</div>
					   			</div> <!-- /.search-box -->
					   		</div> <!-- /.right-content -->
					   		<div class="them-logo float-left"><a href="#"><img src="<%=path%>/images/them-logo/them-main-logo-2.png" alt="logo"></a></div>

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
										<li class="dropdown-holder active current-page-item Active-manu"><a href="index-2.html"> 首页 </a>
											
										</li>

										<li class="dropdown-holder"><a href="#">Gallery</a>
											
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
												<li><a href="shop.html" class="tran3s">领养列表</a></li>
												<li><a href="shop-details.html" class="tran3s">宠物详情</a></li>
											</ul>
										</li>									   										
									</ul>
								</div><!-- /.navbar-collapse -->
							</nav>
						</div> <!-- / menu-skew-div -->
					</div> <!-- /.container main-menu -->
				</div> <!-- /.main-menu -->

				<!-- Theme Main Banner ____________________________ -->
				<div id="theme-main-banner" class="theme-main-banner-v-two">
					<div data-src="<%=path%>/images/home/banner-slider-2.jpg">
						<div class="camera_caption">
							<div class="container text-center">
							    <h1 class="wow fadeInUp animated" data-wow-delay="0.2s">吸猫聚集地</h1>
							    <span class="wow fadeInUp animated" data-wow-delay="0.5s"> 当代中国最大的吸猫网站</span>
							    <p class="wow fadeInUp animated" data-wow-delay="0.8s">还等什么，赶紧加入吧！！！！！</p>
								<a href="<%=path%>/registPet.action" class="tran3s wow fadeInLeft animated banner-button-left" data-wow-delay="1s">登记宠物</a>
								<a href="blog-v1.html" class="tran3s wow fadeInRight animated banner-button-right" data-wow-delay="1s">show出你的宠物心得</a>
							</div> <!-- /.container -->
						</div> <!-- /.camera_caption -->
					</div>
					
					
				</div> <!-- /#theme-main-banner -->
			</section>

			<!-- banner-bottom-section ____________________________ -->
			<section class="banner-bottom-version-two">
				<div class="container">
					<div class="row">
						<div class="col-sm-4 col-xs-12">
							<div class="banner-bottom-item">
								<div class="banner-bottom-contante text-center">
									<i class="flaticon-egyptian-cat"></i>
									<h6><a href="#">登记宠物管理</a></h6>
									<!-- <p>We have over 15 years of experience</p> -->
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12">
							<div class="banner-bottom-item">
								<div class="banner-bottom-contante text-center">
									<i class="flaticon-dog-training"></i>
									<h6><a href="blog-v1.html">心得交流</a></h6>
									
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12">
							<div class="banner-bottom-item">
								<div class="banner-bottom-contante text-center">
									<i class="flaticon-pawprint"></i>
									<h6><a href="shop.html" class="tran3s">领养宠物</a></h6>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- We are myPet ____________________________ -->
			<section class="we-are-my-pet-section">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-12 col-xs-12 text-center float-right">
							<div class="we-are-my-pet-text we-are-my-pet-text-v-two">
								<span>欢迎来到</span>
								<h2>宠物 <span>交<span>流</span></span> 平台</h2>
								<p>本网站旨在给领养院+领养人 / 私人主人+领养人 / 养宠人+养宠人 之间搭造沟通交流的平台。更大程度地实现“以领养代替购买”！</p>
								<h5>ZHXB</h5>
								
							</div>
						</div>
						<div class="col-md-6 col-sm-12 col-xs-12 margin-we-are-myPet">
							<div class="we-are-my-pet-img">
								<img src="<%=path%>/images/home/img-1.jpg" alt="image">
								<div></div>
							</div>
						</div>
					</div>
				</div>
			</section>
			
				<!-- Latest News ____________________________ -->
<div class="our-blog">
				<div class="container">
					<div class="them-title text-center">
						<span></span>
						<h2>最新报告</h2>
					</div> <!-- /.them-title -->
			<a href="#" class="hvr-float-shadow">查看更多</a>
                     
					<div class="blog-item-wrapper">
						<div class="row">
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="single-blog">
									<div class="image"><img src="<%=path%>/images/home/img-10.jpg" alt=""></div>
									<div class="text tran3s">
										<h5><a href="blog-details.html">Dogs Having The Summer Ever</a></h5>
										<p>Summer is a time of vacations and travel or simply relaxing at home for a staycation As much as we would love for our dogs to accompany</p>
										<span>13 /04 /17</span>
									</div> <!-- /.text -->
								</div> <!-- /.single-blog -->
							</div> <!-- /.item -->
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="single-blog">
									<div class="image"><img src="<%=path%>/images/home/img-11.jpg" alt=""></div>
									<div class="text tran3s">
										<h5><a href="blog-details.html">The cat feeling sad , when she was alone</a></h5>
										<p>Summer is a time of vacations and travel or simply relaxing at home for a staycation As much as we would love for our dogs to accompany</p>
										<span>15 /04 /17</span>
									</div> <!-- /.text -->
								</div> <!-- /.single-blog -->
							</div> <!-- /.item -->
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="single-blog">
									<div class="image"><img src="<%=path%>/images/home/img-12.jpg" alt=""></div>
									<div class="text tran3s">
										<h5><a href="blog-details.html">Cat Having nice moment the winter</a></h5>
										<p>Summer is a time of vacations and travel or simply relaxing at home for a staycation As much as we would love for our dogs to accompany</p>
										<span>19 /04 /17</span>
									</div> <!-- /.text -->
									
								</div> <!-- /.single-blog -->
							</div> <!-- /.item -->
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="single-blog">
									<div class="image"><img src="<%=path%>/images/home/img-12.jpg" alt=""></div>
									<div class="text tran3s">
										<h5><a href="blog-details.html">Cat Having nice moment the winter</a></h5>
										<p>Summer is a time of vacations and travel or simply relaxing at home for a staycation As much as we would love for our dogs to accompany</p>
										<span>19 /04 /17</span>
									</div> <!-- /.text -->
									
								</div> <!-- /.single-blog -->
							</div> <!-- /.item -->
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="single-blog">
									<div class="image"><img src="<%=path%>/images/home/img-12.jpg" alt=""></div>
									<div class="text tran3s">
										<h5><a href="blog-details.html">Cat Having nice moment the winter</a></h5>
										<p>Summer is a time of vacations and travel or simply relaxing at home for a staycation As much as we would love for our dogs to accompany</p>
										<span>19 /04 /17</span>
									</div> <!-- /.text -->
									
								</div> <!-- /.single-blog -->
							</div> <!-- /.item -->
							<div class="col-md-4 col-sm-6 col-xs-12">
								<div class="single-blog">
									<div class="image"><img src="<%=path%>/images/home/img-12.jpg" alt=""></div>
									<div class="text tran3s">
										<h5><a href="blog-details.html">Cat Having nice moment the winter</a></h5>
										<p>Summer is a time of vacations and travel or simply relaxing at home for a staycation As much as we would love for our dogs to accompany</p>
										<span>19 /04 /17</span>
									</div> <!-- /.text -->
									
								</div> <!-- /.single-blog -->
							</div> <!-- /.item -->
						</div> <!-- /.blog-slider -->
					</div> <!-- /.row -->
				</div> <!-- /.container -->
			</div> <!-- /.our-blog -->
			
			
			<!-- Join Now  ____________________________ -->
			<section class="join-the-dating-pat">
				<div class="join-top-shape"><img src="<%=path%>/images/shape-2.png" alt="shape"></div>
				<div class="the-dating-pat-text">
					<div class="container">
						<div class="row">
							<div class="col-sm-8 col-xs-12">
								<div>
									<h2>Join The Dating Pet</h2>
									<p>When you choose the veterinarians at Tails Veterinary Clinic to be your pet care partner, you can be assured your pet is receiving the most advanced veterinary care from experienced pet care providers.</p>
								</div>
							</div>
							<div class="col-sm-4 col-xs-12">
								<div><a href="#" class="hvr-float-shadow">Join Now</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="join-bottom-shape"><img src="<%=path%>/images/shape-3.png" alt="shape"></div>
			</section>

			<!-- Our Pet Services ____________________________ -->
			<section class="our-pet-services-section">
				<div class="container">
					<div class="them-title text-center">
						<span></span>
						<h4>近期登记宠物情况</h4>
						
					</div>

					<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											<img src="<%=path%>/images/shop/img-1.png" alt="image">
										</div>
										<div class="price-and-taitle">
											<h5><a href="shop-details.html">A1 Cat</a></h5>
											<h6>小猫刚出生，家里父母实在不同意再养了，现在希望有个好心人领养它，要真心对待的</h6>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											<img src="<%=path%>/images/shop/img-1.png" alt="image">
										</div>
										<div class="price-and-taitle">
											<h5><a href="shop-details.html">A1 Cat</a></h5>
											<h6>小猫刚出生，家里父母实在不同意再养了，现在希望有个好心人领养它，要真心对待的</h6>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											<img src="<%=path%>/images/shop/img-1.png" alt="image">
										</div>
										<div class="price-and-taitle">
											<h5><a href="shop-details.html">A1 Cat</a></h5>
											<h6>小猫刚出生，家里父母实在不同意再养了，现在希望有个好心人领养它，要真心对待的</h6>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											<img src="<%=path%>/images/shop/img-1.png" alt="image">
										</div>
										<div class="price-and-taitle">
											<h5><a href="shop-details.html">A1 Cat</a></h5>
											<h6>小猫刚出生，家里父母实在不同意再养了，现在希望有个好心人领养它，要真心对待的</h6>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											<img src="<%=path%>/images/shop/img-1.png" alt="image">
										</div>
										<div class="price-and-taitle">
											<h5><a href="shop-details.html">A1 Cat</a></h5>
											<h6>小猫刚出生，家里父母实在不同意再养了，现在希望有个好心人领养它，要真心对待的</h6>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											<img src="<%=path%>/images/shop/img-1.png" alt="image">
										</div>
										<div class="price-and-taitle">
											<h5><a href="shop-details.html">A1 Cat</a></h5>
											<h6>小猫刚出生，家里父母实在不同意再养了，现在希望有个好心人领养它，要真心对待的</h6>
										</div>
									</div>
								</div>
							</div>
				</div>
			</section>

			<!-- Company History _________________________________ -->
			<section class="company-history-section company-history-v-two">
				<div class="company-history-shape-img-top"><img src="<%=path%>/images/shape-1.png" alt="shape-img"></div>
				<div class="company-history-containt-opact">
					<div class="container">
						<div class="row">
							<div class="col-lg-3 col-xs-6 history-item-weight">
								<div class="clear-fix">
									<div class="history-item item-one">
										<div>
											<i class="flaticon-handshake"></i>
											<p>Happy Customers</p>
											<h2><span class="timer" data-from="0" data-to="210" data-speed="2000" data-refresh-interval="5">0</span></h2>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-xs-6 history-item-weight">
								<div class="clear-fix">
									<div class="history-item item-two">
										<div>
											<i class="flaticon-satisfaction"></i>
											<p>Customer Satisfaction</p>
											<h2><span class="timer" data-from="0" data-to="100" data-speed="2000" data-refresh-interval="5">0</span>%</h2>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-2 col-xs-6 history-item-weight col-item-three">
								<div class="clear-fix">
									<div class="history-item item-three">
										<div>
											<i class="flaticon-construction"></i>
											<p>Pet Hosted</p>
											<h2><span class="timer" data-from="0" data-to="95" data-speed="2000" data-refresh-interval="5">0</span></h2>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-xs-6 history-item-weight">
								<div class="clear-fix">
									<div class="history-item item-four">
										<div>
											<i class="flaticon-medal"></i>
											<p>Awards Winning</p>
											<h2><span class="timer" data-from="0" data-to="234" data-speed="2000" data-refresh-interval="5">0</span></h2>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>


				<div class="container">
					<div class="">
						<div id="partner-logo" class="owl-carousel owl-theme">
							<div class="item"><div><img src="<%=path%>/images/home/slide-logo-1.png" alt="logo"></div></div>
							<div class="item"><div><img src="<%=path%>/images/home/slide-logo-2.png" alt="logo"></div></div>
							<div class="item"><div><img src="<%=path%>/images/home/slide-logo-3.png" alt="logo"></div></div>
							<div class="item"><div><img src="<%=path%>/images/home/slide-logo-4.png" alt="logo"></div></div>
							<div class="item"><div><img src="<%=path%>/images/home/slide-logo-2.png" alt="logo"></div></div>
						</div> <!-- End .partner_logo -->
					</div>
				</div>
			</div>

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
		<script src="<%=path%>/vendor/bootstrap-select-1.10.0/dist/<%=path%>/js/bootstrap-select.min.js"></script>
		<!-- bootstrap js -->
		<script src="<%=path%>/vendor/bootstrap/<%=path%>/js/bootstrap.min.js"></script>
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