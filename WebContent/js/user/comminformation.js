function addshoppcartcommodity(object)
 {  
   var commodityid=object.parentNode.id;
   var number=document.getElementById("number").innerHTML;
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
   var url ="../../com/servlet/user/ManageShoppcartColumnServlet?commodityid="+commodityid+"&number="+number;
   xmlHttp.open("GET", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);  
 }

function updatenumber(obecjt)
 {  
   var childs=obecjt.parentNode.children;
   var information=obecjt.parentNode.parentNode.id+",";
   if(obecjt.innerHTML=="-"&&childs[0].innerHTML!="1")
	 childs[0].innerHTML=parseInt(childs[0].innerHTML)-parseInt("1");
   if(obecjt.innerHTML=="+")
	 childs[0].innerHTML=parseInt(childs[0].innerHTML)+parseInt("1");
 }