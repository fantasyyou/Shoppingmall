<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/share/font.css" type="text/css">
<link rel="stylesheet" href="../../css/share/title.css" type="text/css">
<link rel="stylesheet" href="../../css/share/share.css" type="text/css">
<link rel="stylesheet" href="../../css/user/bill.css" type="text/css">
<link rel="stylesheet" href="../../css/user/receiveaddress.css" type="text/css">
<script src="../../js/user/bill.js"></script>
<script src="../../js/user/commset.js"></script>
<script src="../../js/user/commquery.js"></script>
<script src="../../js/user/receiveaddress.js"></script>
<title>我的购物车-FLC PLUS商城</title>
</head>
<script type="text/javascript">
window.onload=function()
 {  
  var xmlHttp = null;
  try{
  	     xmlHttp = new XMLHttpRequest();
     } 
  	catch (e) {
  		 try {
  		       xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
  			 } catch (e) {
  				   alert("Your browser does not support XMLHTTP!");
  				   return;
  				}
  		 }
  xmlHttp.onreadystatechange = function() {
     if (xmlHttp.readyState == 4) {
  	      if (xmlHttp.status == 200) {	
  	         s=xmlHttp.responseText;     //接受json数据
  	         var jsonobject=JSON.parse(s);
  	         var commodityset="";
  	         for(var i=0;i<jsonobject.length-1;i++)
	        	{ 
	        	  commodityset=commodityset+"<div id="+jsonobject[i].id+" class='bi-comm'>"+
	        	               "<div class='bi-store'><a>"+jsonobject[i].store+"</a></div>"+
					       	   "<input style='float:left; margin-top:15px;' type='checkbox' id='"+jsonobject[i].id+"-total' onclick='singleelection(this.id)'>"+
					       	   "<div class='bi-comm-img' style='background:url(../../images/commodity/"+jsonobject[i].img+".png); background-size:100% 100%;'></div>"+					       	   
					           "<div class='bi-comm-name'><a>"+jsonobject[i].name+"</a></div>"+
					           "<div class='bi-comm-price'>"+jsonobject[i].price+"</div>"+
					       	   "<div class='bi-comm-number'>"+
					       	      "<div class='bi-reduce' onclick='updatenumber(this)'>-</div>"+
					       	      "<div id='"+jsonobject[i].id+"-number' class='bi-quantity'>"+jsonobject[i].number+"</div>"+
					       	      "<div class='bi-add' onclick='updatenumber(this)'>+</div>"+
					       	   "</div>"+
					       	   "<div class='bi-comm-price' style='margin-left:0px;'>"+jsonobject[i].subtotal+"</div>"+
					       	   "<div class='bi-comm-operate'>"+
					       	      "<div><a onclick='operationcommodity(this)'>删除</a></div>"+
					       	      "<div style='clear:left;'><a onclick='operationcommodity(this)'>移到我的关注</a></div>"+
					       	      "<div style='clear:left;'><a onclick='operationcommodity(this)'>加到我的关注</a></div>"+
					       	   "</div>"+
					           "</div>";
	        	} 
  	         document.getElementById("bi-comm-area").innerHTML=commodityset;
  	         document.getElementById("total-number").innerHTML=jsonobject[jsonobject.length-1].totalnumber;
  	         document.getElementById("total-price").innerHTML=jsonobject[jsonobject.length-1].totalprice;
  	      }
  	    else 
  	      alert(xmlHttp.status);
     }
   } 
  var url ="../../com/servlet/user/ManageShoppcartColumnServlet";
  xmlHttp.open("POST", url, false);
  xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
  xmlHttp.send(null); 
 }
</script>
<body class="body">
<div class="ti-top-title-area">
   <div class="title-left-260"><a onclick="javascript:{window.location.href='homepage.jsp'}">FLC PLUS首页</a></div>
   <div class="title-left-652"><a>fantasy</a></div>
   <div class="title-width-80"><a>免费注册</a></div>
   <div class="title"><strong>|</strong></div>
   <div class="title-width-80"><a>我的京东</a></div>
   <div class="title"><strong>|</strong></div>
   <div class="title-width-80"><a>个人中心</a></div>
</div>
<div class="bi-logo">
    <img class="logo-img" align="absmiddle" src="../../images/commodity/b1图标.jpg">
   <font class="f-25-STXinwei">购物车</font>
</div>
<div class="bi-query-input"><div><input id="keyword" type="text" class="bi-input"/></div></div>
<div class="bi-query-button"><div><button class="bi-button" onclick="commquery()">搜索</button></div></div>
<div class="bi-comm-title" style="margin-top:80px;">
   <span class="f-left-15"><strong>全部商品</strong></span>
</div>
<div class="bi-comm-title" style="background:#F0F0F0;">
   <div style="float:left; width:15%;"><input type="checkbox" id="total-1" onclick="allelection('total-1')">全选</div>
   <div style="float:left; width:37%;">商品信息</div>
   <div style="float:left; width:12%; text-align:center;">单价</div>
   <div style="float:left; width:12%; text-align:center;">数量</div>
   <div style="float:left; width:12%; text-align:center;">小计</div>
   <div style="float:left; width:12%;">操作</div>
</div>
<div id="bi-comm-area">
	<div id="1" class="bi-comm" style="display:none">
	   <div class="bi-store"><a>蓝墨水图书专营店</a></div>
	   <input style="float:left;  margin-top:15px;" type="checkbox" id="1-total" onclick="singleelection('this.id')">
	   <div class="bi-comm-img" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
	   <div class="bi-comm-name"><a>Java EE互联网轻量级框架整合开发 SSM框架（Spring MVC+Spring+MyBatis）和Redis实现 </a></div>
	   <div class="bi-comm-price">60.00</div>
	   <div class="bi-comm-number">
	      <div class="bi-reduce" onclick="updatenumber(this)">-</div>
	      <div id="1-number" class="bi-quantity">1</div>
	      <div class="bi-add" onclick="updatenumber(this)">+</div>
	   </div>
	   <div class="bi-comm-price" style="margin-left:0px;">60.00</div>
	   <div class="bi-comm-operate">
	      <div><a onclick="operationcommodity(this)">删除</a></div>
	      <div style="clear:left;"><a onclick="operationcommodity(this)">移到我的关注</a></div>
	      <div style="clear:left;"><a onclick="operationcommodity(this)">加到我的关注</a></div>
	   </div>
	</div>
	<div id="2" class="bi-comm" style="display:none">
	   <div class="bi-store"><a>蓝墨水图书专营店</a></div>
	   <input style="float:left;  margin-top:15px;" type="checkbox" id="2-total" onclick="singleelection('this.id')">
	   <div class="bi-comm-img" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
	   <div class="bi-comm-name"><a>Java EE互联网轻量级框架整合开发 SSM框架（Spring MVC+Spring+MyBatis）和Redis实现 </a></div>
	   <div class="bi-comm-price">60.00</div>
	   <div class="bi-comm-number">
	      <div class="bi-reduce" onclick="updatenumber(this)">-</div>
	      <div id="2-number" class="bi-quantity">1</div>
	      <div class="bi-add" onclick="updatenumber(this)">+</div>
	   </div>
	   <div class="bi-comm-price" style="margin-left:0px;">60.00</div>
	   <div class="bi-comm-operate">
	      <div><a onclick="operationcommodity(this)">删除</a></div>
	      <div style="clear:left;"><a onclick="operationcommodity(this)">移到我的关注</a></div>
	      <div style="clear:left;"><a onclick="operationcommodity(this)">加到我的关注</a></div>
	   </div>
	</div>
	<div id="3" class="bi-comm" style="display:none">
	   <div class="bi-store"><a>蓝墨水图书专营店</a></div>
	   <input style="float:left;  margin-top:15px;" type="checkbox" id="3-total" onclick="singleelection('this.id')">
	   <div class="bi-comm-img" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
	   <div class="bi-comm-name"><a>Java EE互联网轻量级框架整合开发 SSM框架（Spring MVC+Spring+MyBatis）和Redis实现 </a></div>
	   <div class="bi-comm-price">60.00</div>
	   <div class="bi-comm-number">
	      <div class="bi-reduce" onclick="updatenumber(this)">-</div>
	      <div id="3-number" class="bi-quantity">1</div>
	      <div class="bi-add" onclick="updatenumber(this)">+</div>
	   </div>
	   <div class="bi-comm-price" style="margin-left:0px;">60.00</div>
	   <div class="bi-comm-operate">
	      <div><a onclick="operationcommodity(this)">删除</a></div>
	      <div style="clear:left;"><a onclick="operationcommodity(this)">移到我的关注</a></div>
	      <div style="clear:left;"><a onclick="operationcommodity(this)">加到我的关注</a></div>
	   </div>
	</div>
</div>
<div class="bi-operate">
   <div class="f-left">
      <input type="checkbox" id="total-2" onclick="allelection('total-2')">全选&nbsp;&nbsp;
      <span><a onclick="operationbill(this)">删除选中的商品</a></span>&nbsp;&nbsp;
      <span><a onclick="operationbill(this)">移到我的关注</a></span>&nbsp;&nbsp;
      <span><a onclick="operationbill(this)">加到我的关注</a></span>
   </div>
   <div class="f-right">
      <span>已选择<span id="total-number" class="f-red">0</span>件商品</span>&nbsp;&nbsp;
      <span>总价:<span class="f-20-red">￥</span><span id="total-price" class="f-20-red">0.00</span></span>&nbsp;&nbsp;
      <div class="bi-bill-button" onclick="javascript:{window.location.href='settlement.jsp'}">去结算</div>
   </div>
</div>
<div id="bi-comm-title" class="bi-comm-title">
   <span onclick="updateadcommodity()" style="color:#FF0000;">随手购</span>&nbsp;&nbsp;&nbsp;&nbsp;
   <span onclick="updateconcerncommodity(this)">我的关注</span>
</div>
<div id="bi-ad-comm-area" class="bi-ad-comm-area">
   <div class="update" style="margin-top:130px;" onclick="updateadarea(this)">＜</div>
   <div id="101" class="bi-ad-comm">
      <div class="ad-comm-img" onclick="querycommodityinformation(this)" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
      <div class="ad-comm-name" onclick="querycommodityinformation(this)"><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>
      <div class="ad-comm-price">￥13.00</div>
      <div class="ad-comm-add" onclick="addbillcommodity(this)">加入购物车</div>
   </div>
   <div id="102" class="bi-ad-comm">
      <div class="ad-comm-img" onclick="querycommodityinformation(this)" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
      <div class="ad-comm-name" onclick="querycommodityinformation(this)"><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>
      <div class="ad-comm-price">￥93.00</div>
      <div class="ad-comm-add" onclick="addbillcommodity(this)">加入购物车</div>
   </div>
   <div id="103" class="bi-ad-comm">
      <div class="ad-comm-img" onclick="querycommodityinformation(this)" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
      <div class="ad-comm-name" onclick="querycommodityinformation(this)"><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>
      <div class="ad-comm-price">￥147.00</div>
      <div class="ad-comm-add" onclick="addbillcommodity(this)">加入购物车</div>
   </div>
   <div id="104" class="bi-ad-comm">
      <div class="ad-comm-img" onclick="querycommodityinformation(this)" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
      <div class="ad-comm-name" onclick="querycommodityinformation(this)"><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>
      <div class="ad-comm-price">￥195.00</div>
      <div class="ad-comm-add" onclick="addbillcommodity(this)">加入购物车</div>
   </div>
   <div id="105" class="bi-ad-comm">
      <div class="ad-comm-img" onclick="querycommodityinformation(this)" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
      <div class="ad-comm-name" onclick="querycommodityinformation(this)"><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>
      <div class="ad-comm-price">￥78.00</div>
      <div class="ad-comm-add" onclick="addbillcommodity(this)">加入购物车</div>
   </div>
   <div class="update" style="float:right; margin-top:130px; margin-left:976px;" onclick="updateadarea(this)">＞</div>
</div>
</body>
</html>