<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../css/share/login.css" type="text/css">
<script src="../../js/share/login.js"></script>
<title>啄木鸟-欢迎登录</title>
</head>
<body>
<table class="table_1" background="../../images/share/头条.png"></table>
<table class="table_2" background="../../images/share/登录.jpg"><tr>
  <td width="50%"></td>
  <td width="18%">
    <form method="post">   
    <table border="0" cellspacing="0" cellpadding="0">
      <tr><td class="login_td"></td></tr>
      <tr><td class="td_title" colspan="2"> 
         <font class="font_title"><strong>用户登录</strong></font>
      </td></tr> 
      <tr><td height="25px" colspan="2" style="background-color:#FFFFFF;">
          <label id="prompt" class="prompt" style="font-size:12px"></label>
      </td></tr>
      <tr><td class="td_input"><img class="login_img" src="../../images/share/用户.png"></td>
        <td align="left" bgcolor=#FFFFFF>
          <input class="input" type="text" id="phone" placeholder="手机号" maxlength="20"/>
      </td></tr>   
      <tr><td class="td_input"><img class="login_img" src="../../images/share/密码.png"></td>
        <td align="left" bgcolor=#FFFFFF>
          <input class="input" type="password" id="logincode" placeholder="密码" maxlength="20"/>
      </td></tr>
      <tr><td height="50px" colspan="2" bgcolor=#FFFFFF>   
          <a style="padding-left:223px;" href="retrieve-1.jsp">忘记密码</a>
      </td></tr>
      <tr><td align="center" height="50px" colspan="2" bgcolor=#FFFFFF>
          <input class="login" type="button" value="登   录" onclick="login()"/>
      </td></tr>   
      <tr><td height="80px" colspan="2" bgcolor=#FFFFFF>
           <a style="color:red; padding-left:193px;" href="register-1.jsp">
             <img align="absmiddle" width=30px height=30px src="../../images/share/用户.png">注册用户</a>
      </td></tr>
      <tr><td class="login_td"></td></tr>
    </table>
  </form> 
  <td width="32%"></td>
</tr></table>
</body>
</html>