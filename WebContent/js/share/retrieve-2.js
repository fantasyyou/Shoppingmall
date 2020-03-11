function judgecode()  //监测code(密码)输入框
 { 
   var code=document.getElementById("code").value; 
   var confirm=document.getElementById("confirm").value; 
   if(code==confirm)
     { 
	    document.getElementById('prompt_1').style.display="none";
	    document.getElementById('confirmcode').style.marginTop="40px";
     }
   else
	 { 
	   document.getElementById("prompt_1").innerHTML="密码不一致";
	   document.getElementById('prompt_1').style.display="block";
	   document.getElementById('confirmcode').style.marginTop="14px";
	 }
 }

function retrieve()
 { 
	var code=document.getElementById("code").value;
	var confirm=document.getElementById("confirm").value;
	if((code==""||code==" ")&&(confirm==""||confirm==" "))
	  {
		 document.getElementById("prompt_1").innerHTML="密码为空";
		 document.getElementById('prompt_1').style.display="block";
		 document.getElementById('confirmcode').style.marginTop="14px";
		
	  }
	else if(code!=confirm)
	  {
		 document.getElementById("prompt_1").innerHTML="密码不一致";
		 document.getElementById('prompt_1').style.display="block";
		 document.getElementById('confirmcode').style.marginTop="14px";
	  }
	else
	  {
	     document.getElementById('prompt_1').style.display="none";
	     document.getElementById('confirmcode').style.marginTop="40px";
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
	     var url ="../../com/servlet/tool/ModifyPasswordServlet?code="+code;
	     xmlHttp.open("GET", url, false);
	     xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
	     xmlHttp.send(null);		
	  }
 }