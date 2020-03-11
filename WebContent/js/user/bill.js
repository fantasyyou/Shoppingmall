function allelection(id)  //设置全部选中或全部未选中
 { 
   var object=document.getElementById(id);
   if(object.checked==true)
	 { 
	   var childs=document.getElementById("bi-comm-area").children;
	   for(var i=0;i<childs.length;i++)
		   document.getElementById(childs[i].id+"-total").checked=true;
	   document.getElementById("total-1").checked=true;
	   document.getElementById("total-2").checked=true;
	 }
   else
	 { 
	   var childs=document.getElementById("bi-comm-area").children;
	   for(var i=0;i<childs.length;i++)
		 document.getElementById(childs[i].id+"-total").checked=false;	
	   document.getElementById("total-1").checked=false;
	   document.getElementById("total-2").checked=false;
	 }
 }

function singleelection(id)
 {
   var object=document.getElementById(id);
   if(object.checked==false)
	 {
	   document.getElementById("total-1").checked=false;
	   document.getElementById("total-2").checked=false;	   
	 }
   else
	 {
	   var bool=true;
	   var childs=document.getElementById("bi-comm-area").children;
	   for(var i=0;i<childs.length;i++)
		 {
		   if(document.getElementById(childs[i].id+"-total").checked==false)
		     bool=false;
		 }
	   if(bool==true)
		  {
		    document.getElementById("total-1").checked=true;
		    document.getElementById("total-2").checked=true;			   
		  }
	 }
 }

function updatenumber(obecjt)
 {  
   var childs=obecjt.parentNode.children;
   var information=obecjt.parentNode.parentNode.id+",";
   if(obecjt.innerHTML=="-"&&childs[1].innerHTML!="1")
	  {
	    var child=obecjt.parentNode.parentNode.children;
	    childs[1].innerHTML=parseInt(childs[1].innerHTML)-parseInt("1");
	    child[6].innerHTML=parseFloat(child[6].innerHTML)-parseFloat(child[4].innerHTML);
	    information+=childs[1].innerHTML;
	    document.getElementById("total-number").innerHTML=parseInt(document.getElementById("total-number").innerHTML)-parseInt("1");
  	    document.getElementById("total-price").innerHTML=parseFloat(document.getElementById("total-price").innerHTML)-parseFloat(child[4].innerHTML);
	  }
   if(obecjt.innerHTML=="+")
	  { 
	    var child=obecjt.parentNode.parentNode.children;
	    childs[1].innerHTML=parseInt(childs[1].innerHTML)+parseInt("1");
	    child[6].innerHTML=parseInt(child[6].innerHTML)+parseInt(child[4].innerHTML);
	    information+=childs[1].innerHTML;
	    document.getElementById("total-number").innerHTML=parseInt(document.getElementById("total-number").innerHTML)+parseInt("1");
  	    document.getElementById("total-price").innerHTML=parseFloat(document.getElementById("total-price").innerHTML)+parseFloat(child[4].innerHTML);
	  }
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
   var url ="../../com/servlet/user/AddBillServlet?information="+encodeURI(information);
   xmlHttp.open("POST", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null); 
 }

function operationbill(object)
 {
   var childs=document.getElementById("bi-comm-area").children;
   var commodityid=object.innerHTML+",";
   for(var i=0;i<childs.length;i++)
	 {	
	   if(document.getElementById(childs[i].id+"-total").checked==true)
	     commodityid=commodityid+childs[i].id+",";
	 }
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
   if(object.innerHTML=="删除选中的商品"||object.innerHTML=="移到我的关注")
	 { 
       for(var i=childs.length-1;i>0;i--)
    	 { 
    	   if(document.getElementById(childs[i].id+"-total").checked==true)
    		 { 
    		   var number=document.getElementById(childs[i].id+"-number").innerHTML;
    		   var price=childs[i].children[6].innerHTML;
    		   var totalnumber=document.getElementById("total-number").innerHTML;
    		   var totalprice=document.getElementById("total-price").innerHTML;
    		   document.getElementById("total-number").innerHTML=parseInt(totalnumber)-parseInt(number);
    		   document.getElementById("total-price").innerHTML=parseFloat(totalprice)-parseFloat(price);	
    		   document.getElementById("bi-comm-area").removeChild(childs[i]);	   		   
    		 }
    	 }
	   if(document.getElementById(childs[0].id+"-total").checked==true)
		 {
		   var number=document.getElementById(childs[0].id+"-number").innerHTML;
		   var price=childs[0].children[6].innerHTML; 
		   var totalnumber=document.getElementById("total-number").innerHTML;
		   var totalprice=document.getElementById("total-price").innerHTML;
		   document.getElementById("total-number").innerHTML=parseInt(totalnumber)-parseInt(number);
		   document.getElementById("total-price").innerHTML=parseFloat(totalprice)-parseFloat(price);	
		   document.getElementById("bi-comm-area").removeChild(childs[0]);
		 }
	 }
   var url ="../../com/servlet/user/OperationBillServlet?commodityid="+encodeURI(commodityid);
   xmlHttp.open("GET", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null); 
 }

function operationcommodity(object)
 {
   var commodityid=object.innerHTML+",";
   commodityid=commodityid+object.parentNode.parentNode.parentNode.id;
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
   if(object.innerHTML=="删除"||object.innerHTML=="移到我的关注")
	  { 
	    var number=document.getElementById(object.parentNode.parentNode.parentNode.id+"-number").innerHTML;
	    var price=object.parentNode.parentNode.parentNode.children[6].innerHTML; 
	    var totalnumber=document.getElementById("total-number").innerHTML;
	    var totalprice=document.getElementById("total-price").innerHTML;
	    document.getElementById("total-number").innerHTML=parseInt(totalnumber)-parseInt(number);
	    document.getElementById("total-price").innerHTML=parseFloat(totalprice)-parseFloat(price);	
	    document.getElementById("bi-comm-area").removeChild(object.parentNode.parentNode.parentNode);	
	  }
   var url ="../../com/servlet/user/OperationBillServlet?commodityid="+encodeURI(commodityid);
   xmlHttp.open("GET", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null); 
 }

function updateadcommodity()
 { 
   var child=document.getElementById("bi-comm-title").children;
   child[0].style.color="#FF0000";
   child[1].style.color="#000000";
   var childs=document.getElementById("bi-ad-comm-area").children;
   if(childs[1].id=="106")
	 { 
	   var recommend="<div class='update' style='margin-top:130px;' onclick='updateadarea(this)'>＜</div>"+
	   "<div id='101' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥13.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div id='102' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥93.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div id='103' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥147.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div id='104' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥195.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div id='105' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥78.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
       "<div class='update' style='margin-top:130px; margin-left:976px;' onclick='updateadarea(this)'>＞</div>";
	   document.getElementById("bi-ad-comm-area").innerHTML=recommend; 
	 } 
   else
	 { 
	   var recommend="<div class='update' style='margin-top:130px;' onclick='updateadarea(this)'>＜</div>"+
	   "<div id='106' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥148.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div id='107' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥68.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div id='108' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥58.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div id='109' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥174.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
       "<div id='110' class='bi-ad-comm'>"+
       "<div class='ad-comm-img' onclick='querycommodityinformation(this)' style='background:url(../../images/commodity/book.png); background-size:100% 100%;'></div>"+
       "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>Java EE互联网轻量级框架整合开发 SSM框架 (Spring MVC+Spring+MyBatis)和Redis实现 </a></div>"+
       "<div class='ad-comm-price'>￥79.00</div>"+
       "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
       "</div>"+
	   "<div class='update' style='margin-top:130px; margin-left:976px;' onclick='updateadarea(this)'>＞</div>";
	   document.getElementById("bi-ad-comm-area").innerHTML=recommend; 
	 }	 
 }

function updateconcerncommodity(object)  //查询我的关注商品
 { 
   var choice="";                    //查看用户选择
   if(object.innerHTML=="＜")
	 choice="previous";
   else if(object.innerHTML=="＞")
	 choice="next";
   else
	 choice="";
   var child=document.getElementById("bi-comm-title").children;
   child[0].style.color="#000000";
   child[1].style.color="#FF0000";
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
   	         var concerncommodity="<div class='update' style='margin-top:130px;' onclick='updateadarea(this)'>＜</div>";
   	         for(var i=0;i<jsonobject.length;i++)
   	           {
        		 concerncommodity=concerncommodity+"<div id="+jsonobject[i].id+" class='bi-ad-comm'>"+
                 "<div class='ad-comm-img' style='background:url(../../images/commodity/book.png); background-size:100% 100%;' onclick='querycommodityinformation(this)'></div>"+
                 "<div class='ad-comm-name' onclick='querycommodityinformation(this)'><a>"+jsonobject[i].name+"</a></div>"+
                 "<div class='ad-comm-price'>"+jsonobject[i].price+"</div>"+
                 "<div class='ad-comm-add' onclick='addbillcommodity(this)'>加入购物车</div>"+
                 "</div>";
   	           }
   	        concerncommodity=concerncommodity+"<div class='update' style='margin-top:130px; margin-left:976px;' onclick='updateadarea(this)'>＞</div>";
   	        document.getElementById("bi-ad-comm-area").innerHTML=concerncommodity; 
   	     }
   	    else 
   	      alert(xmlHttp.status);
      }
    } 
   var url ="../../com/servlet/user/QueryConcernCommodityServlet?choice="+encodeURI(choice);
   xmlHttp.open("GET", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null); 
 }

function updateadarea(object)
 {
   var childs=document.getElementById("bi-comm-title").children;
   if(childs[0].style.color=="rgb(255, 0, 0)")
     updateadcommodity();	
   else
	 updateconcerncommodity(object);	
 }

function addbillcommodity(object)
 { 
   var commodityid=object.parentNode.id;
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
	  	         var commodityset=document.getElementById("bi-comm-area").innerHTML
	  	         for(var i=0;i<jsonobject.length;i++)
		        	{ 
		        	  commodityset=commodityset+"<div id="+jsonobject[i].id+" class='bi-comm'>"+
		        	               "<div class='bi-store'><a>"+jsonobject[i].store+"</a></div>"+
						       	   "<input style='float:left; margin-top:15px;' type='checkbox' id='"+jsonobject[i].id+"-total' onclick='singleelection('this.id')'>"+
						       	   "<div class='bi-comm-img' style='background:url(../../images/commodity/"+jsonobject[i].img+".png); background-size:100% 100%;'></div>"+					       	   
						           "<div class='bi-comm-name'><a>"+jsonobject[i].name+"</a></div>"+
						           "<div class='bi-comm-price'>"+jsonobject[i].price+"</div>"+
						       	   "<div class='bi-comm-number'>"+
						       	      "<div class='bi-reduce' onclick='updatenumber(this)'>-</div>"+
						       	      "<div id='"+jsonobject[i].id+"-number' class='bi-quantity'>1</div>"+
						       	      "<div class='bi-add' onclick='updatenumber(this)'>+</div>"+
						       	   "</div>"+
						       	   "<div class='bi-comm-price' style='margin-left:0px;'>"+jsonobject[i].subtotal+"</div>"+
						       	   "<div class='bi-comm-operate'>"+
						       	      "<div><a onclick='operationcommodity(this)'>删除</a></div>"+
						       	      "<div style='clear:left;'><a onclick='operationcommodity(this)'>移到我的关注</a></div>"+
						       	      "<div style='clear:left;'><a onclick='operationcommodity(this)'>加到我的关注</a></div>"+
						       	   "</div>"+
						           "</div>";
			  		   document.getElementById("total-number").innerHTML=parseInt(document.getElementById("total-number").innerHTML)+parseInt("1");
			  	  	   document.getElementById("total-price").innerHTML=parseFloat(document.getElementById("total-price").innerHTML)+parseFloat(jsonobject[i].price);
		        	} 
	  	         document.getElementById("bi-comm-area").innerHTML=commodityset;
	  	      }
	  	    else 
	  	      alert(xmlHttp.status);
	     }
	   } 
   var url ="../../com/servlet/user/AddBillServlet?commodityid="+commodityid;
   xmlHttp.open("GET", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);  
 }