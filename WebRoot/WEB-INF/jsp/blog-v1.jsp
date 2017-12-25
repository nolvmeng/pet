<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.pet.pojo.Post" %>
<%@ page import="com.pet.pojo.Img" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<!-- For Resposive Device -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- For IE -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title> MyPet - Pet Shop & Veterinary HTML Template </title>


		<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="images/them-logo/favicon-1.png">
		
		<!-- Main style sheet -->
		<link rel="stylesheet" href=<%=path%>/css/style.css>
		<!-- responsive style sheet -->
		<link rel="stylesheet" href=<%=path%>/css/responsive.css>

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
			<section class="header-section">
		 
				<jsp:include page="./inclu/header.jsp" />
				
				<!-- Theme Main Menu ____________________________ -->
				<jsp:include page="./inclu/MainMenu_1.jsp" />
				
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
											<h1>宠物的心得交流平台</h1>
											<p>同好，交流，萌宠，流离的小动物，开心的瞬间，在这里，你都可以找到。</p>
										</div>
									</div>
									<div class="col-sm-4 col-xs-12">
										<div class="">
											<a href="#" class="hvr-float-shadow">Maybe</a>
										</div>
									</div>
								</div>
								<img src="images/about/dog-1.png" alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="inner-banner-bottom">
					<div class="container">
						<ul>
							<li><a href="index.jsp">首页</a></li>
							<li><span>-</span></li>
							<li><a href="getAllPost">论坛</a></li>
							<li><span>-</span></li>
							<li><a href="#">Blog</a></li>
						</ul>
					</div>
				</div>
			</section>

			<!-- Blog-List ____________________________ -->
			<section class="Blog-List">
				<div class="container">
					<div class="inner-title-one">
						<h2>这是我们最好的博客，在这里你可以更新你的信息，并找到你感兴趣的话题 </h2>
						<span></span>
						<!-- <p>In a professional context it often happens that private or corporate clients order a publication to be made and presented with the actual content still not being ready.</p>
					 --></div>

					<div class="row">
						<div class="col-lg-8 col-md-7 col-xs-12">
							<div class="Blog-list-item-wrapper">
							<% List<Post> post = (List<Post>)request.getAttribute("post");
							   List<Img> img = (List<Img>)request.getAttribute("img");	
					           System.out.println("size++++++++++++"+post.size());
							   for(int i=0;i<post.size();i++){ %>
								<div class="list-item">                        <!-- 这里开始 -->
								
									<div class="item-img">
										<img src=<%=path %>/images/blog/img-1.jpg alt="image">
										<span><%=post.get(i).getTs() %></span>
									</div>
									<div class="item-text">
										<h3><%=post.get(i).getTitle() %></h3>
										<p><%=post.get(i).getContext() %></p>
										<a href=<%=path %>/repliesController/getAllReplies.action?post_id=<%=post.get(i).getPost_id() %>><i class="fa fa-long-arrow-right" aria-hidden="true"></i> 点击进入</a>
									</div>
								</div>
								<%} %>
								<ul class="bolg-button">
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
								</ul>
							</div>
							<div class="blog-details-leave-a-comment">
									<h5>发帖</h5>
									<span></span>
									<form action="post_Submit.action" class="clear-fix">
										<input type="text" placeholder="title" name="title">
										<input type="text" placeholder="tag" name="tag">
										<select name="type">  
										    <option>---请选择贴类型---</option>  
										    <option value="领养贴">领养贴</option>  
										    <option value="爱心交流贴">爱心交流贴</option>  
										    <option value="心得分享贴">心得分享贴</option>  
										</select> <br><br>
										<textarea placeholder="context" name="context"></textarea>
										<!-- <button class="hvr-float-shadow">Submit Comment</button> -->
										<input type="submit" value="发帖">
									</form>
								</div>                   <!-- 这里结束 -->
						</div>

						<div class="col-lg-4 col-md-5 col-xs-12">
							<div class="Blog-side-bar-list">
								<form action="#">
									<input type="text" placeholder="Search...">
									<button><i class="flaticon-search"></i></button>
								</form>
								<div class="blog-categories">
									<h5>最新，最热</h5>
									<ul>
										<li class="clear-fix"><a href="#">宠物<span>( 07 )</span></a></li>
										<li class="clear-fix"><a href="#">流浪<span>( 02 )</span></a></li>
										<li class="clear-fix"><a href="#">喂养<span>( 09 )</span></a></li>
										<li class="clear-fix"><a href="#">交友<span>( 05 )</span></a></li>
										<li class="clear-fix"><a href="#">感情<span>( 06 )</span></a></li>
										<li class="clear-fix"><a href="#">更多<span>( 03 )</span></a></li>
									</ul>
								</div>
								<div class="some-recent-post">
									<h5>最新领养</h5>
									<ul>
										<li>
											<img src="images/blog/1.jpg" alt="image">
											<h6><a href="#">王小明同学的牛奶被领养了</a></h6>
											<span>January 27, 2017  by <span>Ghost</span></span>
										</li>
										<li>
											<img src="images/blog/2.jpg" alt="image">
											<h6><a href="#">李小明同学的牛奶被领养了</a></h6>
											<span>June  22, 2017  by <span>Probash</span></span>
										</li>
										<li>
											<img src="images/blog/3.jpg" alt="image">
											<h6><a href="#">高小明同学的牛奶被领养了.</a></h6>
											<span>July  24, 2017  by <span>Riad</span></span>
										</li>
									</ul>
								</div>
								<div class="Archive">
									<h5>Archive</h5>
									<ul>
										<li class="clear-fix"><a href="#">January 2017 <span>(18)</span></a></li>
										<li class="clear-fix"><a href="#">November 2016 <span>(5)</span></a></li>
										<li class="clear-fix"><a href="#">October 2016 <span>(8)</span></a></li>
										<li class="clear-fix"><a href="#">June 2016 <span>(10)</span></a></li>
										<li class="clear-fix"><a href="#">February 2016 <span>(1)</span></a></li>
										<li class="clear-fix"><a href="#">January 2015 <span>(15)</span></a></li>
									</ul>
								</div>
								<div class="Tages">
									<h5>Tages</h5>
									<ul>
										<li><a href="#">Fresh</a></li>
										<li><a href="#">Fruits</a></li>
										<li><a href="#">Vegetables</a></li>
										<li><a href="#">Milk</a></li>
										<li><a href="#">Food</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<!-- Partner Logo ____________________________ -->
	        <div class="partners-padding-fix">
				<div class="container">
					<div class="">
						<div id="partner-logo" class="owl-carousel owl-theme">
							<div class="item"><div><img src="images/home/slide-logo-1.png" alt="logo"></div></div>
							<div class="item"><div><img src="images/home/slide-logo-2.png" alt="logo"></div></div>
							<div class="item"><div><img src="images/home/slide-logo-3.png" alt="logo"></div></div>
							<div class="item"><div><img src="images/home/slide-logo-4.png" alt="logo"></div></div>
							<div class="item"><div><img src="images/home/slide-logo-2.png" alt="logo"></div></div>
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
		<script src=<%=path%>/vendor/jquery-2.2.3.min.js></script>
		<!-- bootstrap-select.min.js -->
		<script src=<%=path%>/vendor/bootstrap-select-1.10.0/dist/js/bootstrap-select.min.js></script>
		<!-- bootstrap js -->
		<script src=<%=path%>/vendor/bootstrap/js/bootstrap.min.js></script>
		<!-- camera js -->
		<script src=<%=path%>/vendor/Camera-master/scripts/camera.min.js></script>
		<script src=<%=path%>/vendor/Camera-master/scripts/jquery.easing.1.3.js></script>
		<!-- Owl carousel -->
		<script src=<%=path%>/vendor/OwlCarousel2/dist/owl.carousel.min.js></script>
		<!-- appear & countTo -->
		<script src=<%=path%>/vendor/jquery.appear.js></script>
		<script src=<%=path%>/vendor/jquery.countTo.js></script>
		<!-- fancybox -->
		<script src=<%=path%>/vendor/fancybox/dist/jquery.fancybox.min.js></script>
		<!-- Gallery - isotop -->
		<script type="text/javascript" src=<%=path%>/vendor/isotope.pkgd.min.js></script>
		<!-- WOW js -->
		<script type="text/javascript" src=<%=path%>/vendor/WOW-master/dist/wow.min.js></script>
		<!-- Circle Progress -->
		<script type="text/javascript" src=<%=path%>/vendor/circle-progress.js></script>
		<!-- Style js -->
		<script src=<%=path%>/js/custom.js></script>

	</body>
	
	<!-- <div class="blog-details-leave-a-comment">
									<h5>Leave A Comment</h5>
									<span></span>
									<form action="#" class="clear-fix">
										<input type="text" placeholder="Name">
										<input type="email" placeholder="Email">
										<textarea placeholder="Comments"></textarea>
										<button class="hvr-float-shadow">Submit Comment</button>
									</form>
								</div> -->
</html>