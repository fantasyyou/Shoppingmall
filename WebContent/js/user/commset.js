function query(id)
 { 
   var sort=null;     //选择的排序方式
   var choice=null;   //选择分页
   var current=null;  //当前页码
   if(id=="previous-page"||id=="next-page")  //判断是否选择了翻页
	 {
	   var current=document.getElementById("current-page").innerHTML;
	   var total=document.getElementById("total-page").innerHTML;
	   if(id=="previous-page"&&current==1)  //判断是否选择了上一页并且当前页码=1
		   return;
	   if(id=="next-page"&&current==total)  //判断是否选择了下一页并且当前页码=总的页码
		   return;
	   for(var i=1;i<=4;i++) 
		 { 
		   var color=document.getElementById("sort-"+i).style.backgroundColor;
		   if(color=="rgb(255, 0, 0)")  //判读sort-i排序方式是否被选中
			 sort="sort-"+i;
		 }
	   choice=id;
	   current=document.getElementById("current-page").innerHTML;  //当前页码
	 }
   else  //else代表选择了排序方式
	 { 
	   sort=id;
	   choice="-1"; //-1代表没有选择跳转页码
	   current=1;
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
   xmlHttp.onreadystatechange = function() {
      if (xmlHttp.readyState == 4) {
	      if (xmlHttp.status == 200) {	
	         s=xmlHttp.responseText;     //接受json数据
	         if(id=="previous-page"||id=="next-page")
	           updatepaget(id)          //修改分页样式
	         else
	           updatesort(id);          //修改排序样式
  	         var object=JSON.parse(s);
  	         var commodityset="";
  	         for(var i=0;i<object.length;i++)
	        	{ 
	        	  commodityset=commodityset+"<div id="+object[i].id+" class='comm'>"+
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
	      }
	    else 
	      alert(xmlHttp.status);
      }
    } 
   var url ="../../com/servlet/user/QueryCommodityServlet?sort="+sort+"&choice="+choice+"&current="+current;
   xmlHttp.open("POST", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);  
 }

function addconcerncommodity(object)
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
   var url ="../../com/servlet/user/OperationBillServlet?commodityid="+commodityid;
   xmlHttp.open("POST", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);  
 }

function querycommodityinformation(object) { //查询单个商品信息
	window.open("comminformation.jsp?commodityid="+object.parentNode.id);
  }

function updatesort(id)   //修改排序样式
 {
   for(var i=1;i<=4;i++)  //全部修改为默认样式
	 { 
       document.getElementById("sort-"+i).style.backgroundColor='#FFFFFF';
	   document.getElementById("sort-"+i).style.color='#000000';
	 }
   document.getElementById(id).style.backgroundColor='#FF0000'; //选择的排序方式改为被选样式
   document.getElementById(id).style.color='#FFFFFF';
   document.getElementById("current-page").innerHTML=1;
 }

function updatepaget(id) //修改页码样式
 {
   if(id=="previous-page")
	 {
	   var current=parseInt(document.getElementById("current-page").innerHTML)-parseInt("1");
	   document.getElementById("current-page").innerHTML=current;
	 }
   else
     {
	   var current=parseInt(document.getElementById("current-page").innerHTML)+parseInt("1");
	   document.getElementById("current-page").innerHTML=current;
     }
 }