package com.servlet.user;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ManageSettlementServlet extends HttpServlet
{  
  public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException
	  {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");

	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) 
			throws ServletException, IOException
	  {  
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
	  }  
}
