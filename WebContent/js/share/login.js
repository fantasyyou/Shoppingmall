function login()
  { 
    var phone=document.getElementById("phone").value; 
    var logincode=document.getElementById("logincode").value; 
    if(phone==""||phone==" ")
       {
    	 document.getElementById("prompt").innerHTML="请输入用户名";
       }
    if(logincode==""||logincode==" ")
	   {
    	 document.getElementById("prompt").innerHTML="请输入密码";
	   }
    if((phone==""||phone==" ")&&(logincode==""||logincode==" "))
       {
    	 document.getElementById("prompt").innerHTML="请输入用户名和密码";
       }
    
    if((phone!=""&&phone!=" ")&&(logincode!=""&&logincode!=" "))
      { 
    	document.getElementById("prompt").innerHTML="";
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
			     if(s=="验证失败!")		      
			       document.getElementById("prompt").innerHTML="用户名不存在!";
			     if(s=="密码错误!")
			       document.getElementById("prompt").innerHTML="密码错误!";
			     if(s=="验证成功!")
			       window.location.href="../user/homepage.jsp";		       
		      }
		    else 
		      alert(xmlHttp.status);
	       }
	     }     
        var url ="../../com/servlet/tool/LoginServlet?phone="+phone+"&logincode="+logincode;
        xmlHttp.open("GET", url, false);
        xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
        xmlHttp.send(null);
      }
  }