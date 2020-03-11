<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/share/font.css" type="text/css">
<link rel="stylesheet" href="../../css/user/commquery.css" type="text/css">
<link rel="stylesheet" href="../../css/user/commset.css" type="text/css">
<link rel="stylesheet" href="../../css/user/shoppingcart.css" type="text/css">
<script src="../../js/user/commset.js"></script>
<script src="../../js/user/commquery.js"></script>
<script src="../../js/user/shoppcartcolumn.js"></script>
<title>FLC PLUS-网上商城</title>
</head>
<script type="text/javascript">
window.onload=function()
 {  
  var keyword='<%=request.getParameter("keyword")%>';
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
  	         var object=JSON.parse(s);
  	         var commodityset="";
  	         for(var i=0;i<object.length-parseInt("1");i++)
	        	{ 
	        	  commodityset=commodityset+"<div id="+object[i].id+" class='comm' onmousemove='move(this.id)' onmouseout='out(this.id)'>"+
	 	                       "<div class='comm_img' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'"+
	 	                       "onclick='querycommodityinformation(this)'></div>"+
		                       "<div class='comm_price'>"+object[i].price+"</div>"+
		                       "<div class='comm_name' onclick='querycommodityinformation(this)'>"+object[i].name+"</div>"+
		                       "<div class='comm_discuss'>"+object[i].discussnumber+"</div>"+
		                       "<div class='comm_store'>"+object[i].store+"</div>"+
		                       "<div class='comm_operate'>"+
		                         "<div class='sidebar' onclick='addconcerncommodity(this)'>关注</div>"+
		                         "<div class='sidebar_input' onclick='addshoppcartcommodity(this)'>加入购物车</div>"+
		                       "</div>"+
		                       "</div>";   
	        	} 
  	         document.getElementById("commarea").innerHTML=commodityset;
	         document.getElementById("commnumber").innerHTML=object[15].commnumber;
	         document.getElementById("total-page").innerHTML=object[15].pagenumber;
  	      }
  	    else 
  	      alert(xmlHttp.status);
     }
   } 
  var url ="../../com/servlet/user/QueryCommodityServlet?keyword="+encodeURI(keyword);
  xmlHttp.open("GET", url, false);
  xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
  xmlHttp.send(null); 
 }
</script>
<body style="margin:0px; width:1520px; height:auto;">
<div class="div_title">
 <div class="top-title" style="margin-left:50px;"><a onclick="javascript:{window.location.href='homepage.jsp'}">FLC PLUS首页</a></div>
 <div class="top-title" style="margin-left:1063px;"><a>fantasy</a></div>
 <div class="top-title" style="width:80px;"><a>免费注册</a></div>
 <div class="top-title"><strong>|</strong></div>
 <div class="top-title" style="width:80px;"><a>我的京东</a></div>
 <div class="top-title"><strong>|</strong></div>
 <div class="top-title" style="width:80px;"><a>个人中心</a></div>
</div>
<div class="div_query">
  <div class="logo">
     <img align="absmiddle" width=70px height=70px src="../../images/commodity/b1图标.jpg">
  </div>
  <div class="query_input"><input id="keyword" type="text" class="input-commset"/></div>
  <div class="query_button"><button class="button_1" onclick="commquery()">搜索</button></div>
   <div id="shoppcart" class="shoppcart" onmousemove="shoppcartmove()" onmouseout="shoppcartout()">我的购物车</div>
   <div id="shoppcart-column" class="shoppcart_column" onmousemove="shoppcartmove()" onmouseout="shoppcartout()">
      <div class="sc-top-title">最新加入的商品</div>
      <div id="all-shoppcart-goods" style="height:auto; max-height:200px; overflow:auto;">
      </div>
      <div class="sc-comm-total">
         <span id="shoppcart-goods-total-number"></span>&nbsp;&nbsp;
         <span id="shoppcart-goods-total-price"></span>
         <div class="sc-go" onclick="jumpbill()">去购物车</div>
      </div>
   </div>
   <div id="patch-line-shoppcart" onmousemove="shoppcartmove()" onmouseout="shoppcartout()"></div>
</div>
<div class="commad">
   <div style="float:left; font-size:15px;  margin-top:5px;  margin-left:10px;"><strong>精选商品</strong></div>
   <div style="float:left; font-size:12px;  margin-top:5px;  margin-left:78px; color:#D0D0D0">广告</div>
   <div class="commad_img" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
   <div class="commad_price">￥62.40</div>
   <div id="introduce" class="commad_name">Spring MVC+MyBatis开发从入门到项目实战</div>
   <div class="commad_discuss"><span style="color:blue">7300</span><span>条评价</span></div>
   
   <div class="commad_img" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
   <div class="commad_price">￥62.40</div>
   <div id="introduce" class="commad_name">Spring MVC+MyBatis开发从入门到项目实战</div>
   <div class="commad_discuss"><span style="color:blue">7300</span><span>条评价</span></div>
   
   <div class="commad_img" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
   <div class="commad_price">￥62.40</div>
   <div id="introduce" class="commad_name">Spring MVC+MyBatis开发从入门到项目实战</div>
   <div class="commad_discuss"><span style="color:blue">7300</span><span>条评价</span></div>
   
   <div class="commad_img" style="background:url(../../images/commodity/book.png); background-size:100% 100%;"></div>
   <div class="commad_price">￥62.40</div>
   <div id="introduce" class="commad_name">Spring MVC+MyBatis开发从入门到项目实战</div>
   <div class="commad_discuss"><span style="color:blue">7300</span><span>条评价</span></div>
</div>
<div class="div-sort">
  <div id="sort-1" class="sort" style="width:60px; margin-left:10px; background:#FF0000; color:#FFFFFF" onclick="query(this.id)">综合</div>
  <div id="sort-2" class="sort" style="width:60px;" onclick="query(this.id)">销量</div>
  <div id="sort-3" class="sort" style="width:60px;" onclick="query(this.id)">评论数</div>
  <div id="sort-4" class="sort" style="width:60px; border-right:1px solid #9D9D9D;" onclick="query(this.id)">价格</div>
  <div id="next-page" class="sorttt" style="margin-right:10px;" onclick="query(this.id)">＞</div>
  <div id="previous-page" class="sorttt" style="border-right:0px" onclick="query(this.id)">＜</div>
    <div class="sum-coom">共<span id="commnumber" style="color:black;">200+</span>商品 
     <span id="current-page" class="f-red-16">1</span>/<span id="total-page" class="f-black-16">5</span> 
  </div>
</div>
<div class="div-choice">
   <input type="checkbox" name="choice" value="货到付款">货到付款
   <input type="checkbox" name="choice" value="仅显示有货">仅显示有货
</div>
<div id="commarea" class="commarea">
<div id="" class="comm" style="display:none">
   <div class="comm_img" onclick="addconcerncommodity(this)"></div>
   <div class="comm_price"></div>
   <div class="comm_name" onclick="querycommodityinformation(this)"></div>
   <div class="comm_discuss"></div>
   <div class="comm_store"></div>
   <div class="comm_operate">
      <div class="sidebar" onclick="addconcerncommodity(this)">关注</div>
      <div class="sidebar_input" onclick="addshoppcartcommodity(this)">加入购物车</div>
   </div>
</div>
</div>
</body>
</html>