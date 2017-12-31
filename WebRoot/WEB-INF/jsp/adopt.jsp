<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.pet.pojo.Regist" %>
<%@page import="com.pet.pojo.User" %>
<%@page import="com.pet.pojo.Img" %>
<%@page import="com.pet.pojo.Cpet" %>
<%@page import="java.util.List" %>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core" xmlns:h="http://java.sun.com/jsf/html">
<head>
 <title>宠物领养详单</title>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="description" content=""/>
 <meta name="format-detection" content="telephone=no" />
 <meta name=""/>
 
<link rel="stylesheet" href="../css/tasp.css" />
<link href="../css/orderconfirm.css" rel="stylesheet" />
<link rel="icon" type="image/png" sizes="56x56" href="<%=path%>/images/them-logo/favicon-1.png">
		
		<!-- Main style sheet -->
		<link rel="stylesheet" href="<%=path%>/css/style.css">
		<!-- responsive style sheet -->
		<link rel="stylesheet" href="<%=path%>/css/responsive.css">
<style>
#page{width:auto;}
#comm-header-inner,#content{width:950px;margin:auto;}
#logo{padding-top:26px;padding-bottom:12px;}
#header .wrap-box{margin-top:-67px;}
#logo .logo{position:relative;overflow:hidden;display:inline-block;width:140px;height:35px;font-size:35px;line-height:35px;color:#f40;}
#logo .logo .i{position:absolute;width:140px;height:35px;top:0;left:0;background:url(http://a.tbcdn.cn/tbsp/img/header/logo.png);}
</style>

</head>
<body data-spm="1">

<section class="header-section">
				<!-- Header _________________________________ -->
				<jsp:include page="./inclu/header.jsp" />
				
				<!-- Theme Main Menu ____________________________ -->
				
				 <div class="clearfix"> </div>
			</section>
<div id="page">

 <div id="content" class="grid-c">

  <div id="address" class="address" style="margin-top: 20px;" data-spm="2">
<form name="addrForm" id="addrForm" action="#">
<h3>确认地址
 <span class="manage-address">
 <a href="http://member1.taobao.com/member/fresh/deliver_address.htm" target="_blank" title="管理我的收货地址"
 class="J_MakePoint" data-point-url="http://log.mmstat.com/buy.1.7">管理收货地址</a>
 </span>
</h3>
<ul id="address-list" class="address-list">
     <li class="J_Addr J_MakePoint clearfix  J_DefaultAddr "  data-point-url="http://log.mmstat.com/buy.1.20">
 
   <div class="address-info">
<%User user = (User)request.getAttribute("user"); 
	String address = user.getUser_info().getProvince()+user.getUser_info().getCity()+user.getUser_info().getAddress();
%>
 <input name="address"class="J_MakePoint " type="radio" value="" id="" data-point-url="http://log.mmstat.com/buy.1.20" ah:params=" "  checked="checked" >
 <label  class="user-address">
        <%=address %><%=user.getUser_info().getRealName() %><%out.write("\n"); %><em><%=user.getUser_info().getPhone() %></em>
   </label>
 <em class="tip" style="display: none">默认地址</em>
 <a class="J_DefaultHandle set-default J_MakePoint" href="/auction/update_address_selected_status.htm?addrid=674944241" style="display: none" data-point-url="http://log.mmstat.com/buy.1.18">设置为默认收货地址</a>
 </div>
     </li>
     
     </ul>
<ul id="J_MoreAddress" class="address-list hidden">
     
 </ul>

<div class="address-bar">
 <a href="#" class="new J_MakePoint" id="J_NewAddressBtn">修改地址</a>
 </div>

</form>
</div>

  <form id="J_Form" name="J_Form" action="<%=path %>/adoptController/addAdopt.action" method="post">
           <div>
 <h3 class="dib">确认领养信息</h3>
 <table cellspacing="0" cellpadding="0" class="order-table" id="J_OrderTable" summary="统一下单订单信息区域">

 <thead>
 <tr>
 <th class="s-title">可爱萌宠<hr/></th>
 <th class="s-price">种类<hr/></th>
 <th class="s-amount">品种<hr/></th>
 <th class="s-agio">来自<hr/></th>
 <th class="s-total">登记时间<hr/></th>
 </tr>
 </thead>
     

<%Regist regist = (Regist)request.getAttribute("regist");
	Cpet cpet = (Cpet)request.getAttribute("cpet");
	List<Img> imgs = cpet.getImgs();
%>
<tbody data-spm="3" class="J_Shop" data-tbcbid="0" data-outorderid="47285539868"  data-isb2c="false" data-postMode="2" data-sellerid="1704508670">
<tr class="first"><td colspan="5"></td></tr>
<tr class="shop blue-line">
 <td colspan="3">
   登记用户：<a class="J_ShopName J_MakePoint" data-point-url="http://log.mmstat.com/buy.1.6"  target="_blank" ><%=regist.getUser().getUser_name() %></a>
     <span class="seller">收养人：<a href="" target="_blank" class="J_MakePoint" data-point-url="http://log.mmstat.com/buy.1.15"><%=user.getUser_name() %></a></span>
    
    
    </td>

</tr>
 <tr class="item"  >
 <td class="s-title">

   <img src="http://forpet.oss-cn-shenzhen.aliyuncs.com/post/<%=imgs.get(0).getKey() %>" class="itempic">

   <div class="props">
   <a href="#"><span><%=regist.getCpet().getNickname() %></span></a>
   <br />
     <span>描述:<%=regist.getCpet().getDesc() %></span>
     <br />
     <span>发现时间:<%=cpet.getTs() %></span>
         </div>
 
 
     </td>
 <td class="s-price">
   
  <span class='price '>
 <em class="style-normal-small-black J_ItemPrice"  ><%=regist.getCpet().getCategory() %></em>
  </span>

</td>
 <td class="s-amount" data-point-url="">
        <%=regist.getCpet().getType() %>
 
 </td>
 <td class="s-agio">
       <div class="J_Promotion promotion" data-point-url=""><%=regist.getCpet().getFrom() %></div>
   </td>
 <td class="s-total">
   
   <span class='price '>
 <em class="style-normal-bold-red J_ItemTotal "  ><%=regist.getTs()%></em>
  </span>
    
 </td>
</tr>



<tr class="item-service">
 <td colspan="5" class="servicearea" style="display: none"></td>
</tr>

<tr class="blue-line" style="height: 2px;"><td colspan="5"></td></tr>
<tr class="other other-line">
 <td colspan="5">
 <ul class="dib-wrap">
 <li class="dib user-info">
 <ul class="wrap">
 <li>
  <div class="field gbook">
   <h6>留言：</h6>
   <textarea style="width:350px;height:80px;" title="选填：对本次交易的补充说明（建议填写已经和卖家达成一致的说明）" name="message"></textarea>
 </div>
</li>
   </ul>
 </li>
 <li class="dib extra-info">

 <div class="shoparea">
 <ul class="dib-wrap">
 <li class="dib title"></li>
 <li class="dib sel"><div class="J_ShopPromo J_Promotion promotion clearfix" data-point-url="http://log.mmstat.com/buy.1.16"></div></li>
 <li class="dib fee">  <span class='price '>
 <em class="style-normal-bold-black J_ShopPromo_Result"  >.</em>
  </span>
</li>
 </ul>
 </div>

 <div class="shoppointarea"></div>

   <div class="farearea">
 <ul class="dib-wrap J_farearea">
 <li class="dib title">运送方式：</li>
 <li class="dib sel" data-point-url="http://log.mmstat.com/jsclick?cache=*&tyxd=wlysfs">
 
   <select name="way" class="J_Fare">
     <option value="快递"  selected="selected"  >
 快递 
 </option>
       <option  value="线下自行联系">
 线下自行联系
 </option>
       
     </select>
   
     </li>
 <li class="dib fee">  <span class='price '>

  </span>
</li>
 </ul>
 </div>
   <div class="extra-area">
 <ul class="dib-wrap">
 <li class="dib title">联系时间：</li>
 <li class="dib content">登记人将在您点击领养后一天与您联系</li>
 </ul>
 </div>
   
   <div class="servicearea" style="display: none"></div>
 </li>
 </ul>
 </td>
</tr>

<tr class="shop-total blue-line">
 <td colspan="5">拯救更多无家可归的狗狗吧
   </td>
</tr>
</tbody>
  <tfoot>
 <tr>
 <td colspan="5">

<div class="order-go" data-spm="4">
<div class="J_AddressConfirm address-confirm">
 <div class="kd-popup pop-back" style="margin-bottom: 40px;">
 <div class="box">
 <div class="bd">
 <div class="point-in">
   
   <em class="t">领养宠物：</em>  <span class='price g_price '>
 <em class="t" ><%=regist.getCpet().getNickname() %></em>
  </span>
  <em class="t">品种：</em>  <span class='price g_price '>
 <em class="t" ><%=regist.getCpet().getType() %></em>
  </span>
</div>

  <ul >
  
 <li><em>寄送至:</em><span id="J_AddrConfirm" style="word-break: break-all;">
   <%=user.getUser_info().getProvince() %><%=user.getUser_info().getCity() %><%=user.getUser_info().getAddress() %>
   </span></li>
 <li><em>领养人:</em><span id="J_AddrNameConfirm"><%=user.getUser_name() %><%=user.getUser_info().getPhone() %></span></li>
 </ul>
     </div>
 </div>

 <input type="hidden" name="r_id" value="<%=regist.getR_id()%>"/>
         <a href="#"class="back J_MakePoint" >返回宠物详情</a>
       <input type="submit" class=" btn-go"  value="确认领养"/>
       
  </div>
 </div>

 

 


 <div class="msg" style="clear: both;">
 <p class="tips naked" style="float:right;padding-right: 0">若登记人超过一天未与您联系，请您主动联系登记人</p>
 </div>
 </div>
 </td>
 </tr>
 </tfoot>
 </table>
</div>
  </form>
 

</div>


</body>
</html>