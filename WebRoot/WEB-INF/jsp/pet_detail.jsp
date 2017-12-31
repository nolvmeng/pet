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


		<title> Mypet </title>


		<!-- Favicon -->
		<link rel="icon" type="image/png" sizes="56x56" href="<%=path%>/images/them-logo/favicon-1.png">
		
		<!-- Main style sheet -->
		<link rel="stylesheet" href="<%=path%>/css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" href="<%=path%>/css/responsive.css">
		<link href="<%=path %>/css/Detail-css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<!--theme style-->
<link href="<%=path %>/css/Detail-style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="<%=path %>/js/jquery.min.js"></script>
<!--//theme style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<script src="<%=path %>/js/simpleCart.min.js"> </script>
<!-- start menu -->
<link href="<%=path %>/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=path %>/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>	
<!-- /start menu -->
<link href="<%=path %>/css/form.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="<%=path %>/css/flexslider.css" type="text/css" media="screen" />
		
	</head>
	
<body>
	
		<div class="main-page-wrapper">

			<!-- Header _________________________________ -->
			 
						

			<section class="header-section">
				<!-- Header _________________________________ -->
				<jsp:include page="./inclu/header.jsp" />
				
				<!-- Theme Main Menu ____________________________ -->
				<jsp:include page="./inclu/MainMenu_1.jsp" />
				 <div class="clearfix"> </div>
			</section>

			<div class="product">
	 <div class="container">				
		 <div class="product-price1">
			 <div class="top-sing">
				  <div class="col-md-7 single-top">	
					 <div class="flexslider">
							  <ul class="slides">
							  <%Regist regist = (Regist)request.getAttribute("regist"); 
							Map<Integer,List<Img>> imgs =(Map<Integer,List<Img>>)request.getAttribute("imgs");
							//发送登记表与图到订单页
							
							%>
							<%for(int i=0;i<imgs.get(regist.getCpet().getC_id()).size();i++){ %>
									
									<li data-thumb="http://forpet.oss-cn-shenzhen.aliyuncs.com/post/<%=imgs.get(regist.getCpet().getC_id()).get(i).getKey() %>">
									<div class="thumb-image"> <img src="http://forpet.oss-cn-shenzhen.aliyuncs.com/post/<%=imgs.get(regist.getCpet().getC_id()).get(i).getKey() %>" data-imagezoom="true" class="img-responsive" alt=""/> </div>
								</li>
									<%} %>
								
								
							  </ul>
						</div>					 					 
					 <script src="<%=path %>/js/imagezoom.js"></script>
						<script defer src="<%=path %>/js/jquery.flexslider.js"></script>
						<script>
						// Can also be used with $(document).ready()
						$(window).load(function() {
						  $('.flexslider').flexslider({
							animation: "slide",
							controlNav: "thumbnails"
						  });
						});
						</script>

				 </div>	
			     <div class="col-md-5 single-top-in simpleCart_shelfItem">
					  <div class="single-para ">
						 <h4>宠物昵称:<%=regist.getCpet().getNickname() %> </h4>							
							<h5 class="item_price">领养代替购买</h5>							
							<p ><%=regist.getCpet().getDesc() %></p>
							<div class="prdt-info">
								 <ul>
									 <li>- 登记用户:<%=regist.getUser().getUser_name() %></li>
									 <li>- 登记时间:<%=regist.getTs() %></li>
									 <li>- <%=regist.getCpet().getCategory() %></li>
									 <li>- <%=regist.getCpet().getType() %></li>
								 </ul>
							</div>
							<div class="check">
							 <p><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span><%=regist.getCpet().getFrom() %></p>
							 <form class="navbar-form">
								  <div class="form-group">
									<input type="text" class="form-control" placeholder="Enter Pin code">
								  </div>
								  <button type="submit" class="btn btn-default">Verify</button>
							 </form>
						    </div>
							<a href="<%=path %>/adoptController/getCpetOrder.action?r_id=<%=regist.getR_id() %>" class="add-cart item_add">联系领养</a>							
					 </div>
				 </div>
				 <div class="clearfix"> </div>
			 </div>
	     </div>
		 
	 </div>
</div>

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
		
		<!-- Style js -->
		<script src="<%=path%>/js/custom.js"></script>
</body>
</html>