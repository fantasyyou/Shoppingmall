function send()  //发送验证码
 {   	
  var phone=document.getElementById("phone").value; 
  if(phone==""||phone==" ")
     { 
	   document.getElementById("prompt_1").innerHTML="请输入手机号";
	   document.getElementById('prompt_1').style.display="block";
	   document.getElementById('getcode').style.marginTop="14px";
     }
  else if(phone!=""&&phone!=" "&&!(/^1[34578]\d{9}$/.test(phone)))
	 { 
	   document.getElementById("prompt_1").innerHTML="手机号格式错误";
	   document.getElementById('prompt_1').style.display="block";
	   document.getElementById('getcode').style.marginTop="14px";
	 }
  else 
    {   
	    document.getElementById('prompt_1').style.display="none";
	    document.getElementById('getcode').style.marginTop="40px";
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
			     names = s.split(",");
		      }
		    else 
		      alert(xmlHttp.status);
	       }
	     } 
	    var url ="../../com/servlet/tool/ProvingIdentityServlet?phones="+phone;
        xmlHttp.open("GET", url, false);
        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
        xmlHttp.send(null);
    } 
 }

function judgephone()  //监测phone(手机号)输入框
 { 
   var phone=document.getElementById("phone").value; 
   if(phone==""||phone==" "||(/^1[34578]\d{9}$/.test(phone)))
     { 
	    document.getElementById('prompt_1').style.display="none";
	    document.getElementById('getcode').style.marginTop="40px";
     }
   else if(phone!=""&&phone!=" "&&!(/^1[34578]\d{9}$/.test(phone)))
	 { 
	   document.getElementById("prompt_1").innerHTML="手机号格式错误";
	   document.getElementById('prompt_1').style.display="block";
	   document.getElementById('getcode').style.marginTop="14px";
	 }
 }

function next(address)
 { 
   var phone=document.getElementById("phone").value; 
   if(document.getElementById('getcode').style.marginTop=="40px"&&phone!=""&&phone!=" ") //判断手机号是否可用
	 {  
	    var code=document.getElementById("code").value;
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
		         if(s=="验证码错误")
		           { 
		     		 document.getElementById("prompt_2").innerHTML="验证码错误";
		     		 document.getElementById('prompt_2').style.display="block";
		     		 document.getElementById('next').style.marginTop="14px";
		           }
		         else
		      	    window.location.href=address;  //页面跳转
		      }
		    else 
		      alert(xmlHttp.status);
	       }
	     }     
	    var url ="../../com/servlet/tool/ProvingIdentityServlet?code="+code;
	    xmlHttp.open("POST", url, false);
	    xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
	    xmlHttp.send(null);
	 }
 }

function judgecode()  //监测code(验证码)输入框
 { 
   document.getElementById('prompt_2').style.display="none";
   document.getElementById('next').style.marginTop="40px";
 }