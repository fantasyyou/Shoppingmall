package com.servlet.tool;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.backstage.user.ManageUser;
import com.project.model.User;
public class LoginServlet extends HttpServlet
  {
    private static String phone="17743911675";  
    
    public static String getPhone() {
		return phone;
	  }
    public static void setPhone(String phone) {
		LoginServlet.phone = phone;
	  }
 	public void doGet(HttpServletRequest request,HttpServletResponse response) //核对用户名
			throws ServletException, IOException
	  {  
	     request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/xml; charset=UTF-8");
		 response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 PrintWriter out = response.getWriter();
		 User user=new User();
		 user.setPhone(request.getParameter("phone"));
		 user.setCode(request.getParameter("logincode"));
		 User users=new ManageUser().verificationUser(user);
		 if(null==users)
			out.print("验证失败!");
		 if(!(null==users)) { 
			 if(!users.getPower().equals("")&&!users.getPower().equals(" "))
	            out.print("验证成功!");
			 if(users.getPower().equals("")||users.getPower().equals(" "))
	            out.print("密码错误!");
		 }
	  }
  }