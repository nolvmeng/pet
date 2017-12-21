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
		
		
		<link href="manage/css/bootstrap.min.css" rel="stylesheet">
    <link href="manage/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="manage/css/animate.css" rel="stylesheet">
    <link href="manage/css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="manage/css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="/manage/css/style.css" rel="stylesheet">
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
										<li class="dropdown-holder active current-page-item Active-manu"><a href="<%=path%>/index.action"> 首页 </a>
											
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
							<div class="request-form">
								<img src="<%=path%>/images/faq-img-1.png" alt="">
								<h2>登记信息</h2>
								<span></span>
								<form action="<%=path%>/cpetController/addCpet.action" method="post" name="form1" id="form1" onchange="dealValue()">
									<h6>宠物昵称</h6>
									<input type="text" placeholder="Name" id="nickname" name="nickname" >
									<h6>种类（猫狗）</h6>
									<input type="text" placeholder="category" id="category" name="category">
									<h6>类型</h6>
									<input type="text" placeholder="type" name="type" id="type">
									<h6>发现时间</h6>
									<input type="text" placeholder="time" name="ts" id="ts">
									<h6>哪里发现</h6>
									<input type="text" placeholder="from" name="from" id="from">
									<h6>描述</h6>
									<textarea placeholder="Type your message" name="desc" id="desc"></textarea>
								 
									
								</form>
							</div>
						</div>
						
						 <script type="text/javascript">
				    function dealValue( )
                        {    // var mount=document.getElementsByName("nickname").innerText;
							   var nickname=document.getElementById('nickname') ;
							   var name = document.getElementById("name");
						       name.value=nickname.value
						       
						       var category=document.getElementById('category');
						       var cate=document.getElementById("cate");
						       cate.value=category.value;
						       
						       var type=document.getElementById("type");
						       var ty=document.getElementById("ty");
						       ty.value=type.value;
						      
						      	var ts=document.getElementById("ts");
						      	var time=document.getElementById("time");
						      	time.value=ts.value;
						      	
						      	var from=document.getElementById("from");
						      	var fr=document.getElementById("fr");
						      	fr.value=from.value;
						      	
						      	var desc=document.getElementById("desc");
						      	var de=document.getElementById("de");
						      	de.value=desc.value;
						    /* if (isNaN(v))
						    {
						        alert('not a number');
						        return;
						    }
						    var d=parseInt(v);
						    var b=parseInt(mount);
						    
						    if(d>b)
						    {  
						        tx.value=b;
						        return;
						    }  */
						} 
				 </script>
						
						<div class="wrapper wrapper-content animated fadeIn">
            
                <div class="col-md-6 col-xs-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h3>上传图片</h3>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_file_upload.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_file_upload.html#">Config option 1</a>
                                </li>
                                <li><a href="form_file_upload.html#">Config option 2</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form id="my-awesome-dropzone" class="dropzone"  method="post" action="<%=path%>/cpetController/addCpet.action" enctype="multipart/form-data" name="form2" >
                            <div class="dropzone-previews"></div>
                            
                            <input type="hidden"  name="nickname" id="name">
                             <input type="hidden"  name="category" id="cate">
                              <input type="hidden"  name="type" id="ty">
                               <input type="hidden"  name="ts" id="time">
								 <input type="hidden"  name="from" id="fr">
								  <input type="hidden"  name="desc" id="de">
								  	
                            <button type="submit" class="btn btn-primary pull-right">上传图片</button>
                        </form>
                       <a href="<%=path %>/index.action" class="btn btn-primary pull-right">&nbsp;&nbsp;提交&nbsp;&nbsp;</a> 
                    </div>
                </div>
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
		
		<!-- Mainly scripts -->
    <script src="manage/js/jquery-2.1.1.js"></script>
    <script src="manage/js/bootstrap.min.js"></script>
    <script src="manage/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="manage/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="manage/js/inspinia.js"></script>
    <script src="manage/js/plugins/pace/pace.min.js"></script>

    <!-- DROPZONE -->
    <script src="manage/js/plugins/dropzone/dropzone.js"></script>
    
     <script>
        $(document).ready(function(){

            Dropzone.options.myAwesomeDropzone = {

                autoProcessQueue: false,
                uploadMultiple: true,
                parallelUploads: 100,
                maxFiles: 100,

                // Dropzone settings
                init: function() {
                    var myDropzone = this;

                    this.element.querySelector("button[type=submit]").addEventListener("click", function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        myDropzone.processQueue();
                    });
                    this.on("sendingmultiple", function() {
                    });
                    this.on("successmultiple", function(files, response) {
                    });
                    this.on("errormultiple", function(files, response) {
                    });
                }

            }

       });

    </script>
    
    <script type="text/javascript" language="javascript">
    	function submitform(){
    	
    		var form1 = document.getElementById("form1");
    		var form2 = document.forms[1];
    	//	form1.submit();
    		form2.submit();;
    	}
    </script>
</body>
</html>