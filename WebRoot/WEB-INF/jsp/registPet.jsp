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
				<div class="top-header">
					<div class="container">
						<div class="clear-fix">
							<ul class="float-left top-header-left">
								<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> FoodFarm, W 35th St, New York</a></li>
								<li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i> mypet_info@gmail.com</a></li>
							</ul>
							<ul class="float-right top-header-right">
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-google" aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				
				<!-- Theme Main Menu ____________________________ -->
				<div class="theme-main-menu">
					<div class="container">
						<div class="main-menu clear-fix">

							
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
										<li class="dropdown-holder active current-page-item Active-manu"><a href="index-2.html"> 首页 </a>
											
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
			</section>

			<!-- Theme Inner Banner ____________________________ -->
			<section class="">
				<div class="them-inner-banner">
					<div class="inner-banner-opact">
						<div class="container">
							<div class="inner-banner-title">
								<div class="row">
									<div class="col-sm-8 col-xs-12">
										<div class="">
											<h1>登记</h1>
											<p>茫茫人海中，如若看到流浪的小猫小狗，请来登记一下，让它能有一个家</p>
										</div>
									</div>
									<div class="col-sm-4 col-xs-12">
										<div class="">
											<a href="#" class="hvr-float-shadow">了解详情</a>
										</div>
									</div>
								</div>
								<img src="<%=path%>/images/about/dog-1.png" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="inner-banner-bottom">
					<div class="container">
						<ul>
							<li><a href="index.html">首页</a></li>
							<li><span>-</span></li>
							<li><a href="faq.html">登记</a></li>
							<li><span>-</span></li>
							<li><a href="#">登记</a></li>
						</ul>
					</div>
				</div>
			</section>

			<!-- Faq ____________________________ -->
			<section class="faq-page">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-xs-12">
							<div class="faq-item">
								<h2>常见问题与解答</h2>
								<span></span>
								<div class="inspiration-tab">
									<div class="inspiration-panel">
										<div class="panel-group theme-accordion" id="accordion">
										  <div class="panel">
										    <div class="panel-heading active-panel">
										      <h6 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
										        猫和狗喜欢人的拥抱？</a>
										      </h6>
										    </div>
										    <div id="collapse1" class="panel-collapse collapse in">
										      <div class="panel-body">
										      	<p>在这事上，人有时候有点儿过于自作多情。猫和狗只有在交配或者打架的时候，才有类似拥抱的动作。而人的拥抱，有时候会让猫和狗困惑甚至引起攻击行为。</p>
										      </div>
										    </div>
										  </div> <!-- /panel 1 -->
										  <div class="panel">
										    <div class="panel-heading">
										      <h6 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
										        猫能找出不喜欢猫的人？</a>
										      </h6>
										    </div>
										    <div id="collapse2" class="panel-collapse collapse">
										      <div class="panel-body">
										      	<p>换个角度恐怕更容易理解这个问题。想像下，如果别人天天围着你叫“咪咪，咪咪，过来过来”，你烦不烦？当屋子里一堆人的时候，猫反而容易去找那些不 大搭理它们的人图个清静.</p>
										      </div>
										    </div>
										  </div> <!-- /panel 2 -->
										  <div class="panel">
										    <div class="panel-heading">
										      <h6 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
										        狗的侵略性是为了显示自己的统治地位？</a>
										      </h6>
										    </div>
										    <div id="collapse3" class="panel-collapse collapse">
										      <div class="panel-body">
										      	<p>其实，胆怯的狗反倒更爱挑衅和叫唤，而那些地位高、有自信的狗则较少有攻击行为。经常遛狗的人会发现，越是像吉娃娃那样的小型狗，越爱叫唤和示威。相反，大一些的狗则显得更温顺。</p>
										      </div>
										    </div>
										  </div> <!-- /panel 3 -->
										  <div class="panel">
										    <div class="panel-heading">
										      <h6 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
										       狗摇尾巴是因为高兴？</a>
										      </h6>
										    </div>
										    <div id="collapse4" class="panel-collapse collapse">
										      <div class="panel-body">
										      	<p>准确地说，狗摇尾巴是因为兴奋，无论开心还是害怕，或者即将开始攻击，它们都会摇尾巴。具体还是要看摇尾巴的频率和尾巴的位置，如果狗尾巴位置较平，左右摆动，这才说明它们高兴。</p>
										      </div>
										    </div>
										  </div> <!-- /panel 4 -->
										  <div class="panel">
										    <div class="panel-heading">
										      <h6 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">
										        只有惩罚才能让狗和猫长记性？</a>
										      </h6>
										    </div>
										    <div id="collapse5" class="panel-collapse collapse">
										      <div class="panel-body">
										      	<p>惩罚确实能起到一定的效果，但是惩罚也会影响宠物的学习能力。过于频繁和严重的惩罚可能反而激起宠物的野性，甚至伤到主人。正确的做法还是以鼓励为主，惩罚为辅。</p>
										      </div>
										    </div>
										  </div> <!-- /panel 5 -->
										  <div class="panel">
										    <div class="panel-heading">
										      <h6 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">
										       提醒狗犯过的错误有助于训练？</a>
										      </h6>
										    </div>
										    <div id="collapse6" class="panel-collapse collapse">
										      <div class="panel-body">
										      	<p>这是个很严重的误区，宠物毕竟智力不高，较难将过去自己干的事和当前主人的表现联系起来。所以，当你把狗领到它在地毯上拉的便便那里大声斥责时，比起认识到自己的错误，狗可能更倾向于认为人类经常发神经，或者主人在让它把便便吃掉……正确的做法是——抓现行！</p>
										      </div>
										    </div>
										  </div> <!-- /panel 6 -->
										  <div class="panel">
										    <div class="panel-heading">
										      <h6 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">
										        猫总是能稳稳当当四脚着地？</a>
										      </h6>
										    </div>
										    <div id="collapse7" class="panel-collapse collapse">
										      <div class="panel-body">
										      	<p>一般情况下，是这样。猫的确能以不可思议的敏捷和柔韧，靠内耳的平衡器官，在下落过程中迅速地摆正身体和四肢以便轻巧稳当地着陆。不过如果猫从距地面太近的地方跌下，它们就没有足够的时间反应和做出调整。</p>
										      </div>
										    </div>
										  </div> <!-- /panel 7 -->
										</div> <!-- end #accordion -->
									</div> <!-- End of .inspiration-panel -->
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="request-form">
								<img src="<%=path%>/images/faq-img-1.png" alt="">
								<h2>登记信息</h2>
								<span></span>
								<form action="<%=path%>/cpetController/addCpet.action" method="post">
									<h6>宠物昵称</h6>
									<input type="text" placeholder="Name" name="nickname">
									<h6>种类（猫狗）</h6>
									<input type="text" placeholder="category" name="category">
									<h6>类型</h6>
									<input type="text" placeholder="type" name="type">
									<h6>发现时间</h6>
									<input type="text" placeholder="time" name="ts">
									<h6>哪里发现</h6>
									<input type="text" placeholder="from" name="from">
									<h6>描述</h6>
									<textarea placeholder="Type your message" name="desc"></textarea>
									
									<button typr="submit" class="hvr-float-shadow">登记</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>

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