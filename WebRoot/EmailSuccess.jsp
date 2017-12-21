<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EmailSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.imgtest{
			text-align: center;
			} 
			img{
				width: 20%;
				height: 20%;
			}
		.butt{
			text-align: center;
		}
		button{
			border-radius: 20%;
			border:solid#FF3030 1px;
			background-color: #FFFFFF;
		}
		.button1{
			border-radius: 20%;
			border:solid#FF3030 1px;
			background-color: #FFC0CB;
			width: 100px;
		}
		.button2{
			border-radius: 20%;
			border:solid#FF3030 1px;
			background-color: #FFFFFF;
			}
		.texr-one{
			text-align: center;
		}
	</style>
  </head>
  
  <body>
	<div class="imgtest">
		<img src="images/dui.jpg">
	</div>
	<div class="texr-one"><h4>邮件已发送成功！请前往邮箱激活</h4></div>
	<div class="butt">
		<input class="button1" type="button" name="" value="重新发送">
		<input class="button2" type="button" name="" value="返回">
	</div>	
</body>
</html>
