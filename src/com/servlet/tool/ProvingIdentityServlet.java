package com.servlet.tool;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.project.tool.*;
public class ProvingIdentityServlet extends HttpServlet
  { 
	static String phone=" ";
	static String code="666666";
	public void doGet(HttpServletRequest request,HttpServletResponse response) //发送验证码
			throws ServletException, IOException
	  {  
		 request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/xml; charset=UTF-8");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 PrintWriter out = response.getWriter();
		 phone=request.getParameter("phones");
         code=new VerificationCode().getCode();
         new VerificationCode().sendCode(code);
	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) //核对验证码
			throws ServletException, IOException
	  {  
         request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/xml; charset=UTF-8");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 PrintWriter out = response.getWriter();
	     String codes=request.getParameter("code");
	     if(codes.equals("")||codes.equals(" ")||!codes.equals(code))
	       out.print("验证码错误");     
	     else
	       {
	    	 out.print("验证码正确"); 
	    	 code=" ";
	       }
	  }
  }
