<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/share/register-1.css" type="text/css">
<script src="../../js/share/register-2.js"></script>
<title>啄木鸟-欢迎注册</title>
</head>
<body>
<div id="register">
   <div class="div_title"></div>
   <div class="div_guide"></div>
   <div class="div_table" style="margin-top:40px;">
      <div class="sidebar">
         <button class="sidebar_button" style="background-color:white;">用户名</button>
      </div>
      <div class="sidebar_input">
         <input class="input" type="text" id="name" placeholder="请输入用户名" maxlength="20" oninput="provingName()" onporpertychange="provingName()"/>
      </div>
   </div>
   <div id="prompt_1" class="prompt"></div>
   <div id="getcode" class="div_table" style="margin-top:40px;">
      <div class="sidebar">
         <button class="sidebar_button" style="background-color:white;">密码</button>
      </div>
      <div class="sidebar_input">
         <input class="input" type="password" id="code" placeholder="请输入密码" maxlength="15" oninput="judgecode()" onporpertychange="judgecode()"/>
      </div>
   </div>
   <div id="prompt_2" class="prompt"></div>
   <div id="confirmcode" class="div_table" style="margin-top:40px;">
      <div class="sidebar">
         <button class="sidebar_button" style="background-color:white;">确认密码</button>
      </div>
      <div class="sidebar_input">
         <input class="input" type="password" id="confirm" placeholder="请确认密码" maxlength="15" oninput="judgecode()" onporpertychange="judgecode()"/>
      </div>
   </div>
   <div id="register" class="div_table" style="margin-top:40px;">
      <input class="button" type="button" value="立  即  注  册" onclick="register()"/>
   </div>
</div>
</body>
</html>