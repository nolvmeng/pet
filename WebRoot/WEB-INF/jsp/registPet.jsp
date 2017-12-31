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
						       name.value=nickname.value;
						       
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