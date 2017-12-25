<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.pet.pojo.User" %>


				<div class="top-header ">
					<div class="container">
						<div class="clear-fix">
							<ul class="float-left top-header-left">
								
							</ul>
							<ul class="float-right top-header-right">
							  <%User u = (User)session.getAttribute("u"); %>  
								<li><a href="<%=path%>/userController/getUserById.action">欢迎您！<%=u.getUser_name() %> </a></li>
								
								<li><a href="<%=path %>/login.jsp">登出</i></a></li>
							</ul>
						</div>
					</div>
				</div>
		