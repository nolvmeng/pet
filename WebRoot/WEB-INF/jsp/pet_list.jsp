<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
											<h3>宠物领养</h3>
											<p>让宠物能有个好的家</p>
										</div>
									</div>
									
								</div>
								
							</div>
						</div>
					</div>
				</div>
				<div class="inner-banner-bottom">
					<div class="container">
						<ul>
							<li><a href="index.html">首页</a></li>
							<li><span>-</span></li>
							<li><a href="shop.html">宠物领养</a></li>
							<li><span>-</span></li>
							<li><a href="#">宠物列表</a></li>
						</ul>
					</div>
				</div>
			</section>

			<!-- Shop ____________________________ -->
			<section class="shop-page">
				<div class="container">
					<div class="shop-item-wrapper">
						<div class="row top-select-and-form-section">
							<div class="col-lg-3  col-sm-4 col-xs-12">
								<div class="">
									<form action="#">
										<input type="text" placeholder="Search Product ...">
										<button><i class="fa fa-search" aria-hidden="true"></i></button>
									</form>
								</div>
							</div>
							<div class="col-lg-6  col-sm-4  col-xs-12">
								<div class="text-center">
									<p>显示12个结果</p>
								</div>
							</div>
							<div class="col-lg-3 col-sm-4  col-xs-12">
								<ul class="select-section">
									<li>
									<form id="categoryform" method="get" action="<%=path %>/registController/getAdoptBycategory.action">
									
									<%
									   String cate = "";
									if(request.getAttribute("category")!=null){
									    cate =request.getAttribute("category").toString();
									}
									    String atri[] = {"","",""};
									    if("".equals(cate)) atri[0] = "selected = \"selected\"";
									    else  if("cat".equals(cate)) atri[1] = "selected = \"selected\"";
									    else  if("dog".equals(cate)) atri[2] = "selected = \"selected\"";
									 %>
										<select class="selectpicker" name="category" onchange="submitForm();">
											<option value="" <%=atri[0] %>>全部显示</option>
											<option value="cat" <%=atri[1] %>>猫</option>
											<option value="dog" <%=atri[2] %>>狗</option>
											
										</select>
										</form>
									</li>
								</ul> <!-- /.top-select-section -->
							</div>
						</div>
						
						
						<div class="row">
						<%if(request.getAttribute("regists")!=null){
							List<Regist> regists = (List)request.getAttribute("regists");
							
							if(request.getAttribute("imgs")!=null){
								Map<Integer,List<Img>> imgs =(Map<Integer,List<Img>>)request.getAttribute("imgs");
										for(Regist g:regists){%>
							<div class="col-md-4 col-xs-6 product-item-width">
								<div class="shop-item-product-wrapper">
									<div class="shop-item-product">
										<div class="clear-fix">
											<a href="#" class="float-left"> </a>
											 
										</div>
										<div class="product">
											<img src="http://forpet.oss-cn-shenzhen.aliyuncs.com/post/<%=imgs.get(g.getCpet().getC_id()).get(0).getKey() %>" alt="image">
										</div>
										<div class="price-and-taitle">
											<h5><a href="<%=path %>/registController/getCpetById.action?r_id=<%=g.getR_id() %>"><%=g.getCpet().getNickname()  %></a></h5>
											<h6><%=g.getCpet().getDesc() %></h6>
										</div>
									</div>
								</div>
							</div>
							<%}
							}
						}%>
							
						</div>
						<ul class="shop-page-prev-next-button text-center">
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
						</ul>
					</div>	<!-- / .shop-item-wrapper -->
				</div>
			</section>

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
		
		<script>
		function submitForm(){
		//获取form表单对象
    	var form = document.getElementById("categoryform");
    	form.submit();//form表单提交
		}
</script>
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