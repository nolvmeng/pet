<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.pet.pojo.Replies" %>
<%@ page import="com.pet.pojo.Img" %>
<%@ page import="com.pet.pojo.Post" %>
<%@ page import="com.pet.pojo.User" %>
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
		<link rel="stylesheet" href=<%=path %>/css/style.css>
		<!-- responsive style sheet -->
		<link rel="stylesheet" href=<%=path %>/css/responsive.css>

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
				<!-- Header _________________________________ -->
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
											<a href="#" class="hvr-float-shadow">Get A Quote</a>
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
								<div class="list-item blog-details-top-item-wrapper">
								<% Post post = (Post)request.getAttribute("post");
								   List<Img> img_list = (List<Img>)request.getAttribute("img_list");
								   List<Replies> req_list = (List<Replies>)request.getAttribute("req_list");
								   List<User> user_list = (List<User>)request.getAttribute("user_list");
								    %>
									
									<div class="blog-details-top-item-text">
										<h3><%=post.getTitle() %></h3>
										<%String u_id = request.getAttribute("u_id").toString();
										  int id = Integer.parseInt(u_id);
										if(id == post.getAuthor()){  %>
										<a href="<%=path %>/postController/post_Delete.action?post_id=<%=post.getPost_id() %>">删除</a>
										<%} %>
										<div class="Tages">
												<h5>标签:</h5>
												<ul>
												<li><a href="#"><%=post.getTag() %></a></li>
												</ul>
								    	</div>
										<i>发帖人：<span><%-- <%=user_list.get(post.getAuthor()).getUser_name() %> --%>
										
										<%for(int a=0;a<user_list.size();a++){
										  if(user_list.get(a).getU_id()==post.getAuthor()){%><%=user_list.get(a).getUser_name()%>
										  <%}} %>
										</span>分类：<span><%=post.getType() %></span>，发表时间：<span><%=post.getTs() %></span></i>
										<p><%= post.getContext() %></p>

									</div>
								</div>
										<div class="item-img">
										<img src=<%=path %>/images/blog/img-5.jpg alt="image">
										<span>13 /04 /17</span>
										</div>
									</li>
								</ul>
								<div class="blog-details-tag-item clear-fix">
									<ul>
										<li><a href="#">Facebook <span></span></a></li>
										<li><a href="#">Twitter <span></span></a></li>
										<li><a href="#">Linkedin <span></span></a></li>
										<li><a href="#">Google+ <span></span></a></li>
									</ul>
									<a href="#"><i class="fa fa-tag" aria-hidden="true"></i>  food, organic food, meet</a>
								</div>
								<div class="blog-details-comments-section">
									<h5>回帖列表</h5>
									<span></span>
									<ul>
									 <%for(int i=0;i<req_list.size();i++){
									    if(req_list.get(i).getR_id()==0){%>
										<li>
											<div>
												<img src=<%=path %>/images/blog/4.jpg  alt="image">
												<%for(int a=0;a<user_list.size();a++){
										        if(user_list.get(a).getU_id()==req_list.get(i).getU_id()){%>
										        <h5><a href="#"><%=user_list.get(a).getUser_name()%></a></h5>
										        <%}} %>
												<span><%= req_list.get(i).getTs() %></span>
												<p><%= req_list.get(i).getContext() %></p>
												<button class="hvr-float-shadow">回复</button>
												<%if(id == req_list.get(i).getU_id()){  %>
												<a href="<%=path %>/repliesController/replies_Delete.action?h_id=<%=req_list.get(i).getH_id() %>">删除</a>
												<%} %>
											</div>
											<%for(int j=0;j<req_list.size();j++){
											  if(req_list.get(i).getH_id()==req_list.get(j).getR_id()){%>
											     <li>
											        <div>
												    <img src=<%=path %>/images/blog/4.jpg  alt="image">
												    <h5><a href="#"><%= req_list.get(j).getU_id()%></a></h5>
												    <span><%= req_list.get(j).getTs() %></span>
												    <p><%= req_list.get(j).getContext() %></p>
												    <button class="hvr-float-shadow">回复</button>
										        	</div>
											     </li>
											  <%}
											} %>
										</li>
										<%}} %> 
									</ul>
								</div>
								<div class="blog-details-leave-a-comment">
									<h5>回帖</h5>
									<span></span>
									<form action=<%=path %>/repliesController/replies_Submit.action class="clear-fix">
										<textarea name = "context" placeholder="context"></textarea>
										<input type="hidden" value="<%=post.getPost_id() %>" name="post_id">
										<input class="hvr-float-shadow" type="submit" value="提  交"/>
									</form>
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
							<div class="item"><div><img src=<%=path %>/images/home/slide-logo-1.png alt="logo"></div></div>
							<div class="item"><div><img src=<%=path %>/images/home/slide-logo-2.png alt="logo"></div></div>
							<div class="item"><div><img src=<%=path %>/images/home/slide-logo-3.png alt="logo"></div></div>
							<div class="item"><div><img src=<%=path %>/images/home/slide-logo-4.png alt="logo"></div></div>
							<div class="item"><div><img src=<%=path %>/images/home/slide-logo-2.png alt="logo"></div></div>
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
		<script src=<%=path %>/vendor/jquery-2.2.3.min.js></script>
		<!-- bootstrap-select.min.js -->
		<script src=<%=path %>/vendor/bootstrap-select-1.10.0/dist/js/bootstrap-select.min.js></script>
		<!-- bootstrap js -->
		<script src=<%=path %>/vendor/bootstrap/js/bootstrap.min.js></script>
		<!-- camera js -->
		<script src=<%=path %>/vendor/Camera-master/scripts/camera.min.js></script>
		<script src=<%=path %>/vendor/Camera-master/scripts/jquery.easing.1.3.js></script>
		<!-- Owl carousel -->
		<script src=<%=path %>/vendor/OwlCarousel2/dist/owl.carousel.min.js></script>
		<!-- appear & countTo -->
		<script src=<%=path %>/vendor/jquery.appear.js<%=path %>/UI/></script>
		<script src=<%=path %>/vendor/jquery.countTo.js></script>
		<!-- fancybox -->
		<script src=<%=path %>/vendor/fancybox/dist/jquery.fancybox.min.js<%=path %>/UI/></script>
		<!-- Gallery - isotop -->
		<script type="text/javascript" src=<%=path %>/vendor/isotope.pkgd.min.js></script>
		<!-- WOW js -->
		<script type="text/javascript" src=<%=path %>/vendor/WOW-master/dist/wow.min.js></script>
		<!-- Circle Progress -->
		<script type="text/javascript" src=<%=path %>/vendor/circle-progress.js></script>
		<!-- Style js -->
		<script src=<%=path %>/js/custom.js></script>

	</body>
</html>