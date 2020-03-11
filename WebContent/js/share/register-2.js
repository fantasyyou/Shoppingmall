function provingName()  ////核对用户名
 { 
   var name=document.getElementById("name").value; 
   if(name==""||name==" ")
	 {
	   document.getElementById('prompt_1').style.display="none";
	   document.getElementById('getcode').style.marginTop="40px";
	 }
   else
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
		         s = xmlHttp.responseText;
			     if(s=="用户名已存在")
			       {
			  	     document.getElementById("prompt_1").innerHTML="用户名已存在";
				     document.getElementById('prompt_1').style.display="block";
				     document.getElementById('getcode').style.marginTop="14px";
			       }
			     else
			       {
			  	     document.getElementById('prompt_1').style.display="none";
				     document.getElementById('getcode').style.marginTop="40px";
			       }
		      }
		    else 
		      alert(xmlHttp.status);
	      }
	    } 
	   var url ="../../com/servlet/tool/RegisterUserServlet?name="+name;
	   xmlHttp.open("GET", url, false);
	   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
	   xmlHttp.send(null);   
	 }
 }

function judgecode()  //监测code(密码)输入框
 { 
   var code=document.getElementById("code").value; 
   var confirm=document.getElementById("confirm").value; 
   if(code==confirm)
     { 
	   document.getElementById('prompt_2').style.display="none";
	   document.getElementById('confirmcode').style.marginTop="40px";
     }
   else
	 { 
	   document.getElementById("prompt_2").innerHTML="密码不一致";
	   document.getElementById('prompt_2').style.display="block";
	   document.getElementById('confirmcode').style.marginTop="14px";
	 }
 }

function register()
 { 
   var name=document.getElementById("name").value; 
   var code=document.getElementById("code").value; 
   var confirm=document.getElementById("confirm").value; 
   if(name!=""&&name!=" ") //用户名不为空
	 {
	   if(code==confirm) //密码一致
    	 {
    	   if(code==""||code==" ") //密码为空
    		 {
        	   document.getElementById("prompt_2").innerHTML="密码为空";
        	   document.getElementById('prompt_2').style.display="block";
        	   document.getElementById('confirmcode').style.marginTop="14px";
    		 }
    	   else
    		 { 
    		   var str=document.getElementById('getcode').style.marginTop; //判断用户名是否可用
    		   if(str=="40px")
    		     registerconnect(name,code);
    		 }
    	 }
       else
    	 {
    	   document.getElementById("prompt_2").innerHTML="密码不一致";
    	   document.getElementById('prompt_2').style.display="block";
    	   document.getElementById('confirmcode').style.marginTop="14px";
    	 }
	 }
   else
	 {
	   document.getElementById("prompt_1").innerHTML="用户名为空";
	   document.getElementById('prompt_1').style.display="block";
	   document.getElementById('getcode').style.marginTop="14px";
	 }
 }

function registerconnect(name,code)
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
	         s = xmlHttp.responseText;
	         window.location.href='login.jsp';
	      }
	    else 
	      alert(xmlHttp.status);
      }
    }     
   var url ="../../com/servlet/tool/RegisterUserServlet?name="+name+"&code="+code;
   xmlHttp.open("POST", url, false);
   xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
   xmlHttp.send(null);   	 
 }