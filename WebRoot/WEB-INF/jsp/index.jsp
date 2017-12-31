<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.pet.pojo.Regist" %>
<%@page import="com.pet.pojo.Img" %>
<%@page import="com.pet.pojo.User" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Set" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.Collections" %>
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
           <section class="header-section">
			<!-- Header _________________________________ -->
				<jsp:include page="./inclu/header.jsp" />
           </section>

			<!-- Theme V-2 Menu and Banner ____________________________ -->
			<section class="theme-v-2-menu-and-banner">

				<!-- Theme Main Menu ____________________________ -->
				<jsp:include page="./inclu/MainMenu_2.jsp" />
				
				
				<div id="theme-main-banner" class="theme-main-banner-v-two">
					<div data-src="<%=path%>/images/home/banner-slider-2.jpg">
						<div class="camera_caption">
							<div class="container text-center">
							    <h1 class="wow fadeInUp animated" data-wow-delay="0.2s">宠物交流平台</h1>
							    <span class="wow fadeInUp animated" data-wow-delay="0.5s"> 让领养代替买卖</span>
							    <p class="wow fadeInUp animated" data-wow-delay="0.8s">还等什么，赶紧加入吧！！！！！</p>
								<a href="<%=path%>/registPet.action" class="tran3s wow fadeInLeft animated banner-button-left" data-wow-delay="1s">登记宠物</a>
								<a href="blog-v1.html" class="tran3s wow fadeInRight animated banner-button-right" data-wow-delay="1s">show出你的宠物心得</a>
							</div> <!-- /.container -->
						</div> <!-- /.camera_caption -->
					</div>
					<div data-src="<%=path%>/images/home/banner-slider-1.jpg">
						<div class="camera_caption">
							<div class="container text-center">
								<h1 class="wow fadeInUp animated" data-wow-delay="0.2s">宠物交流平台</h1>
							    <span class="wow fadeInUp animated" data-wow-delay="0.5s"> 让领养代替买卖 </span>
							    <p class="wow fadeInUp animated" data-wow-delay="0.8s">还等什么，赶紧加入吧！！！！！</p>
								<a href="<%=path%>/registPet.action" class="tran3s wow fadeInLeft animated banner-button-left" data-wow-delay="1s">登记宠物</a>
								<a href="blog-v1.html" class="tran3s wow fadeInRight animated banner-button-right" data-wow-delay="1s">show出你的宠物心得</a>
							</div> <!-- /.container -->
						</div> <!-- /.camera_caption -->
					</div>
					<div data-src="<%=path%>/images/home/banner-slider-2.jpg">
						<div class="camera_caption">
							<div class="container text-center">
								<h1 class="wow fadeInUp animated" data-wow-delay="0.2s">宠物交流平台</h1>
							    <span class="wow fadeInUp animated" data-wow-delay="0.5s"> 让领养代替买卖 </span>
							    <p class="wow fadeInUp animated" data-wow-delay="0.8s">还等什么，赶紧加入吧！！！！！</p>
								<a href="<%=path%>/registPet.action" class="tran3s wow fadeInLeft animated banner-button-left" data-wow-delay="1s">登记宠物</a>
								<a href="blog-va.html" class="tran3s wow fadeInRight animated banner-button-right" data-wow-delay="1s">show出你的宠物心得</a>
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
									<h6><a href="<%=path %>/postController/getAllPost.action">心得交流</a></h6>
									
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
					<div class="shop-item-wrapper">
					<div class="row">
					<%if(request.getAttribute("regists")!=null){
						List<Regist> regists = (List)request.getAttribute("regists");
						Collections.reverse(regists);
						if(request.getAttribute("imgs")!=null){
							Map<Integer,List<Img>> imgs =(Map<Integer,List<Img>>)request.getAttribute("imgs");			
					for(int i=0;i<regists.size();i++){
											Regist r = regists.get(i);
										%>
					<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											 <img src="http://forpet.oss-cn-shenzhen.aliyuncs.com/post/<%=imgs.get(r.getCpet().getC_id()).get(0).getKey() %>" alt="image"> 
										</div>
										<div class="price-and-taitle">
											<h5><a href="<%=path %>/registController/getCpetById.action?r_id=<%=r.getR_id()%>"><%=r.getCpet().getNickname() %></a></h5>
											<h6><%=r.getCpet().getDesc() %></h6>
										</div>
									</div>
								</div>
							</div>
							<%}} }%>
							
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

          <!--footer  -->
        <jsp:include page="./inclu/footer.jsp" />

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