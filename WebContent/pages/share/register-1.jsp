<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/share/register-1.css" type="text/css">
<script src="../../js/share/register-1.js"></script>
<title>啄木鸟-欢迎注册</title>
</head>
<body>
<div id="register">
   <div class="div_title"></div>
   <div class="div_guide"></div>
   <div class="div_table" style="margin-top:40px;">
      <div class="sidebar">
         <button class="sidebar_button" style="background-color:white;">手机号</button>
      </div>
      <div class="sidebar_input">
         <input class="input" type="text" id="phone" placeholder="请输入手机号" maxlength="20" oninput="judgephone()" onporpertychange="judgephone()"/>
      </div>
   </div>
   <div id="prompt_1" class="prompt"></div>
   <div id="getcode" class="div_table" style="margin-top:40px;">
      <div class="sidebar">
         <button class="sidebar_button" onclick="send()">获取验证码</button>
      </div>
      <div class="sidebar_input">
         <input class="input" type="text" id="code" placeholder="请输入验证码" maxlength="20" oninput="judgecode()" onporpertychange="judgecode()"/>
      </div>
   </div>
   <div id="prompt_2" class="prompt"></div>
   <div id="next" class="div_table" style="margin-top:40px;">
      <input class="button" type="button" value="下一步" onclick="next('register-2.jsp')"/>
   </div>
</div>
</body>
</html>