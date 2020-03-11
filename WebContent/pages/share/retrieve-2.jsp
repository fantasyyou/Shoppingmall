<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/share/register-1.css" type="text/css">
<script src="../../js/share/retrieve-2.js"></script>
<title>啄木鸟-欢迎注册</title>
</head>
<body>
<div id="register">
   <div class="div_title"></div>
   <div class="div_guide"></div>
   <div class="div_table" style="margin-top:40px;">
      <div class="sidebar">
         <button class="sidebar_button" style="background-color:white;">新密码</button>
      </div>
      <div class="sidebar_input">
         <input class="input" type="password" id="code" placeholder="请输入新密码" maxlength="15" oninput="judgecode()" onporpertychange="judgecode()"/>
      </div>
   </div>
   <div id="prompt_1" class="prompt"></div>
   <div id="confirmcode" class="div_table" style="margin-top:40px;">
      <div class="sidebar">
         <button class="sidebar_button" style="background-color:white;">确认新密码</button>
      </div>
      <div class="sidebar_input">
         <input class="input" type="password" id="confirm" placeholder="请确认新密码" maxlength="15" oninput="judgecode()" onporpertychange="judgecode()"/>
      </div>
   </div>
   <div class="div_table" style="margin-top:40px;">
      <input class="button" type="button" value="立  即  修  改" onclick="retrieve()"/>
   </div>
</div>
</body>
</html>