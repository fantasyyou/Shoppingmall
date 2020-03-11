<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/user/commquery.css" type="text/css">
<link rel="stylesheet" href="../../css/user/shoppingcart.css" type="text/css">
<link rel="stylesheet" href="../../css/share/share.css" type="text/css">
<link rel="stylesheet" href="../../css/user/comminformation.css" type="text/css">
<script src="../../js/user/comminformation.js"></script>
<title>FLC PLUS-网上商城</title>
</head>
<script type="text/javascript">
window.onload=function()
 {
  var commodityid='<%=request.getParameter("commodityid")%>';
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
  	         s=xmlHttp.responseText;      //接受json数据
  	         var jsonobject=JSON.parse(s);
  	         document.getElementById("introduce-comm-id").id=jsonobject[0].id;
  	         document.getElementById("introduce-store").innerHTML="<span style='margin-left:15%;'>"+jsonobject[0].store+"</span>";
  	         document.getElementById("introduce-comm-name").innerHTML=jsonobject[0].name;
  	         document.getElementById("introduce-comm-information").innerHTML=jsonobject[0].introduce;
  	         document.getElementById("introduce-comm-price").innerHTML="<span>价 格</span>"+
  	         "<span style='color:#FF0000; font-size:22px;'>￥"+jsonobject[0].price+"</span>"+
  	         "<span style='float:right; font-size:15px;'>累计评价&nbsp;&nbsp;<span style='font-size:17px'>"+jsonobject[0].discussnumber+"&nbsp;&nbsp;</span></span>";
  	         var discuss="<div class='introduce-store' style='border-bottom:1px solid #FF0000;'>"+
  	  	                 "<div style='width:80px; text-align:center; color:#FFFFFF; background:#FF0000;'>商品评价</div></div>";
  	         for(var i=1;i<jsonobject.length;i++)
	        	{ 
  	        	  discuss=discuss+"<div class='introduce-comm-discuss'>"+
  	     	              "<span style='float:left; margin-top:5px;'>"+jsonobject[i].username+"</span>"+
  	    	              "<span style='float:left; clear:both; margin-left:100px;'>"+jsonobject[i].content+"</span>"+
  	    	              "<span style='float:left; clear:both; margin-left:100px; margin-top:30px;'>"+jsonobject[i].time+"</span></div>";
	        	}
  	         document.getElementById("introduce-comm-discuss-area").innerHTML=discuss;
  	      }
  	    else 
  	      alert(xmlHttp.status);
     }
   } 
  var url ="../../com/servlet/user/QueryDiscussServlet?commodityid="+commodityid;
  xmlHttp.open("POST", url, false);
  xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
  xmlHttp.send(null); 
 }
</script>
<body class="body">
<div class="div_title">
 <div class="top-title" style="margin-left:50px;"><a onclick="javascript:{window.location.href='homepage.jsp'}">FLC PLUS首页</a></div>
 <div class="top-title" style="margin-left:1063px;"><a>fantsy</a></div>
 <div class="top-title" style="width:80px;"><a>免费注册</a></div>
 <div class="top-title"><strong>|</strong></div>
 <div class="top-title" style="width:80px;"><a>我的京东</a></div>
 <div class="top-title"><strong>|</strong></div>
 <div class="top-title" style="width:80px;"><a>个人中心</a></div>
</div>
<div class="div_query">
  <div class="logo">
     <img align="absmiddle" width=70px height=70px src="../../images/commodity/b1图标.jpg">
     <font style="font-size:25px; font-family:STXinwei;">啄木鸟</font>
  </div>
  <div class="query_input"><input type="text" class="input-commset"/></div>
  <div class="query_button"><button class="button_1">搜索</button></div>
  <div id="shoppcart" class="shoppcart" onmousemove="shoppcartmove()" onmouseout="shoppcartout()">我的购物车</div>
  <div id="shoppcart-column" class="shoppcart_column" onmousemove="shoppcartmove()" onmouseout="shoppcartout()">
      <div class="sc-top-title">最新加入的商品</div>
      <div id="all-shoppcart-goods" style="height:auto; max-height:200px; overflow:auto;">
      </div>
      <div class="sc-comm-total">
         <span id="shoppcart-goods-total-number"></span>&nbsp;&nbsp;
         <span id="shoppcart-goods-total-price"></span>
         <div class="sc-go">去购物车</div>
      </div>
   </div>
   <div id="patch-line-shoppcart" onmousemove="shoppcartmove()" onmouseout="shoppcartout()"></div>
</div>
<div id="introduce-store" class="introduce-store"><span style="margin-left:15%;"></span></div>
<div class="introduce-comm-picture-area">
  <div id="comm-picture" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
  <div style="height:36px; line-height:36px;">关注</div>
</div>
<div id="introduce-comm-id" class="introduce-comm-information-area">
  <div id="introduce-comm-name"></div>
  <div id="introduce-comm-information"></div>
  <div id="introduce-comm-price">
    <span>价 格</span>
    <span style="color:#FF0000; font-size:22px;"></span>
    <span style="float:right; font-size:15px;"><span style="font-size:17px"></span></span>
  </div>
  <div class="introduce-update-number">
    <div id="number" class="introduce-comm-number">1</div>
    <div class="introduce-add-number" onclick="updatenumber(this)">+</div>
    <div class="introduce-reduce-number" onclick="updatenumber(this)">-</div>
  </div>
  <div class="introduce-add" onclick="addshoppcartcommodity(this)"><strong>加入购物车</strong></div>
</div>
<div id="introduce-comm-discuss-area">
  <div class="introduce-store" style="border-bottom:1px solid #FF0000;">
    <div style="width:80px; text-align:center; color:#FFFFFF; background:#FF0000;">商品评价</div>
  </div>
  <div class="introduce-comm-discuss">
    <span style="float:left; margin-top:5px;"></span>
    <span style="float:left; clear:both; margin-left:100px;"></span>
    <span style="float:left; clear:both; margin-left:100px; margin-top:30px;"></span>
  </div>
</div>
</body>
</html>