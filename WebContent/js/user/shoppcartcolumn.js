function shoppcartmove() {
   if(document.getElementById("all-shoppcart-goods").children.length==0)
      shoppcartcolumnquery();
   document.getElementById("shoppcart-column").style.display="block";
   document.getElementById("patch-line-shoppcart").style.display="block";
   document.getElementById("shoppcart").style.backgroundColor='#FFFFFF';
   document.getElementById("shoppcart").style.borderBottom='0px';
   document.getElementById("shoppcart").style.height="43px";
   document.getElementById("shoppcart").style.boxShadow="0px 0px 3px #aaa";
 }

function shoppcartout() {
   document.getElementById("shoppcart-column").style.display="none";
   document.getElementById("patch-line-shoppcart").style.display="none";
   document.getElementById("shoppcart").style.backgroundColor='#F0F0F0';
   document.getElementById("shoppcart").style.borderBottom='1px solid #ADADAD';
   document.getElementById("shoppcart").style.height="42px";
   document.getElementById("shoppcart").style.boxShadow="0px 0px 0px #aaa";
 }

function shoppcartcolumnquery()
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
	         var obj =JSON.parse(s);
	         var comminformation="";   //购物车里的商品信息
	         for(var i=0;i<obj.length-1;i++)
	           {
	        	 comminformation=comminformation+"<div id="+obj[i].id+" class='sc-comm'>" +
	        	 "<div class='sc-comm-img' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>" +
	        	 "<div class='sc-comm-name'>"+obj[i].name+"</div>"+
	        	 "<div class='sc-comm-price'><span style='float:right'>￥"+obj[i].price+" ×"+obj[i].number+"</span>" +
	        	 "<a style='float:right; clear:both' onclick='deleteshoppcartgoods(this)'>删除</a></div></div>"
	           }
	         document.getElementById("all-shoppcart-goods").innerHTML=comminformation;
	         document.getElementById("shoppcart-goods-total-number").innerHTML=obj[obj.length-1].totalnumber;
	         document.getElementById("shoppcart-goods-total-price").innerHTML=obj[obj.length-1].totalprice;
	      }
	    else 
	      alert(xmlHttp.status);
      }
    } 
   var url ="../../com/servlet/user/ShoppcartColumnServlet";
   xmlHttp.open("GET", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);  
 }

function deleteshoppcartgoods(object)
 {
   var goodsid=object.parentNode.parentNode.id;
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
   var url ="../../com/servlet/user/ShoppcartColumnServlet?goodsid="+goodsid;
   xmlHttp.open("POST", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);
   shoppcartcolumnquery();
 }

function addshoppcartcommodity(object)
 {  
   var commodityid=object.parentNode.parentNode.id;
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
   var url ="../../com/servlet/user/ManageShoppcartColumnServlet?commodityid="+commodityid+"&number=1";
   xmlHttp.open("GET", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);  
   shoppcartcolumnquery();
 }