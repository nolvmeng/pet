<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">myPet</h1>

            </div>
            <h3 >欢迎来到</h3>
            <p>宠物交流平台
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <p>请登录</p>
            <form class="m-t" role="form" action="${pageContext.request.contextPath}/userController/findUser.action" method="post">
                <div class="form-group">
                    <input type="text"  placeholder="Username" required="" size="50" name="user_name">
                </div>
                <div class="form-group">
                    <input type="password"  placeholder="Password" required="" size="50" name="user_pwd">
                </div>
               
			  <button type="submit" class="btn btn-primary block full-width m-b">登录</button> 
                <button  class="btn btn-primary block full-width m-b" onclick=javascrtpt:jump()>注册</button>
               
            </form>
           
        </div>
    </div>
<script>
function jump(){
 window.location.href="register.jsp";
}
</script>
    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>
</html>