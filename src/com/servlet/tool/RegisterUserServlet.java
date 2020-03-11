package com.servlet.tool;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.backstage.user.ManageUser;
import com.project.model.User;
public class RegisterUserServlet extends HttpServlet
  { 
	public void doGet(HttpServletRequest request,HttpServletResponse response) //�˶��û���
			throws ServletException, IOException
	  {  
         request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/xml; charset=UTF-8");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 PrintWriter out = response.getWriter();
		 String name=request.getParameter("name");
		 User user=new ManageUser().queryUser("",name);
		 if(user==null)
		   out.print("�û���������"); 
		 else
		   out.print("�û����Ѵ���");
	  }  
	public void doPost(HttpServletRequest request,HttpServletResponse response) //ע���˺�
			throws ServletException, IOException
	  {  
         request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/xml; charset=UTF-8");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 PrintWriter out = response.getWriter();
		 User user=new User();
		 user.setPhone(ProvingIdentityServlet.phone);
		 user.setName(request.getParameter("name"));
		 user.setCode(request.getParameter("code"));
		 new ManageUser().addUser(user);
	  }
  }
