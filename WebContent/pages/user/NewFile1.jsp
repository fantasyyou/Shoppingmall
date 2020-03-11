<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
window.onload=function()
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
             alert(s);
  	      }
  	    else 
  	      alert(xmlHttp.status);
     }
   } 
  var url ="../../com/servlet/user/QueryDiscussServlet";
  xmlHttp.open("POST", url, false);
  xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
  xmlHttp.send(null); 
 }
</script>
<body>
<div>测试</div>
</body>
</html>