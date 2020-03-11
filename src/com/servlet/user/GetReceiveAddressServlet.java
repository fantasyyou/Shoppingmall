package com.servlet.user;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

import com.backstage.user.ManageReceiveAddress;
import com.project.model.ReceiveAddress;
public class GetReceiveAddressServlet extends HttpServlet 
  {
	public void doGet(HttpServletRequest request,HttpServletResponse response) //查询商品信息
			throws ServletException, IOException
	  {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 ReceiveAddress receiveaddress=new ReceiveAddress();
		 receiveaddress.setUser(request.getParameter("user"));
		 receiveaddress.setProvince(request.getParameter("province"));
		 receiveaddress.setCity(request.getParameter("city"));
		 receiveaddress.setCounty(request.getParameter("county"));
		 receiveaddress.setName(request.getParameter("name"));
		 receiveaddress.setAddress(request.getParameter("address"));
		 receiveaddress.setPhone(request.getParameter("phone"));
		 receiveaddress.setFixedphone(request.getParameter("fixedphone"));
		 receiveaddress.setEmail(request.getParameter("email"));
		 receiveaddress.setAlias(request.getParameter("alias"));
		 new ManageReceiveAddress().addReceiveAddress(receiveaddress);
	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) //更新页面显示的商品信息
			throws ServletException, IOException
	  {  
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 String user=request.getParameter("user");    //获得用户ID
		 List<ReceiveAddress> record=new ManageReceiveAddress().queryReceiveAddress(user) ;
         JSONArray json = new JSONArray();
         for(ReceiveAddress receiveaddress:record)
           {
             JSONObject jo = new JSONObject();
             jo.put("province",receiveaddress.getProvince());
             jo.put("city",receiveaddress.getCity()); 
             jo.put("county",receiveaddress.getCounty());  
             jo.put("name",receiveaddress.getName());  
             jo.put("address",receiveaddress.getAddress());  
             jo.put("phone",receiveaddress.getPhone());  
             jo.put("fixedphone",receiveaddress.getFixedphone());  
             jo.put("email",receiveaddress.getEmail());  
             jo.put("alias",receiveaddress.getAlias());  
             json.put(jo);
           }
         ServletOutputStream os = response.getOutputStream();
         os.write(json.toString().getBytes());
         os.flush();
         os.close();
	  } 
  }