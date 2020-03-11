package com.servlet.user;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.backstage.user.ManageCommodity;
import com.backstage.user.ManageDiscuss;
import com.backstage.user.ManageShoppcartColumn;
import com.project.model.Commodity;
import com.project.model.Discuss;
import com.project.model.ShoppcartColumn;
import com.servlet.tool.LoginServlet;
public class QueryDiscussServlet extends HttpServlet 
 {
	public void doPost(HttpServletRequest request,HttpServletResponse response) //查询商品信息
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		String commodityid=request.getParameter("commodityid");
		Commodity commodity=new Commodity();
		List<Discuss> record=new ArrayList<Discuss>();
		commodity=new ManageCommodity().queryCommodity(commodityid);
		record=new ManageDiscuss().queryDiscuss(commodityid);	
        JSONArray jsonarray = new JSONArray();
        JSONObject jsonobjects = new JSONObject();
        jsonobjects.put("id",commodity.getId());
        jsonobjects.put("store",commodity.getStore());
        jsonobjects.put("img",commodity.getImg()); 
        jsonobjects.put("name",commodity.getName()); 
        jsonobjects.put("introduce",commodity.getIntroduce()); 
        jsonobjects.put("price",commodity.getPrice());
		String discussnumber="";
		int number=Integer.valueOf(commodity.getDiscuss());
		if((number/10000)>0)
		   discussnumber=String.valueOf(number/10000)+"万";
		else if((number/100)==0)
		   discussnumber=String.valueOf(number)+"件";
		else
		   discussnumber=String.valueOf((number/100)*100)+"+";
        jsonobjects.put("discussnumber",discussnumber); 
        jsonarray.put(jsonobjects);
        if(record!=null)
          {
		    for(Discuss discuss:record)
		      {
		        JSONObject jsonobject = new JSONObject();
		        jsonobject.put("username",discuss.getUsername());
		        jsonobject.put("content",discuss.getContent()); 
		        jsonobject.put("time",discuss.getTime());   
		        jsonarray.put(jsonobject);
		      }
          }
        ServletOutputStream os = response.getOutputStream();
        os.write(jsonarray.toString().getBytes());
        os.flush();
        os.close();
	  }
 }