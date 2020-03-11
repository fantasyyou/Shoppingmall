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

import com.backstage.user.ManageConcernCommodity;
import com.backstage.user.ManageShoppcartColumn;
import com.project.model.ConcernCommodity;
import com.project.model.ShoppcartColumn;
import com.servlet.tool.LoginServlet;
public class OperationBillServlet extends HttpServlet
 {
	public void doGet(HttpServletRequest request,HttpServletResponse response) //��ѯ��Ʒ��Ϣ
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
        String[] commodityid=request.getParameter("commodityid").split(",");
        if(commodityid[0].equals("ɾ��ѡ�е���Ʒ")||commodityid[0].equals("ɾ��"))
          {
            for(int i=1;i<commodityid.length;i++)
        	  new ManageShoppcartColumn().deleteComm(commodityid[i],LoginServlet.getPhone());       		
          }
        if(commodityid[0].equals("�Ƶ��ҵĹ�ע")||commodityid[0].equals("�ӵ��ҵĹ�ע"))
          {
            for(int i=1;i<commodityid.length;i++)
        	  {
            	ConcernCommodity concerncommodity=new ConcernCommodity();
            	concerncommodity.setUserid(LoginServlet.getPhone());
            	concerncommodity.setCommodityid(commodityid[i]);
            	new ManageConcernCommodity().addConcernCommodity(concerncommodity);
            	if(commodityid[0].equals("�Ƶ��ҵĹ�ע"))
            	  new ManageShoppcartColumn().deleteComm(commodityid[i],LoginServlet.getPhone());  
        	  }
          }     
	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) //���һ����ע��Ʒ
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
        String commodityid=request.getParameter("commodityid");
        ConcernCommodity concerncommodity=new ConcernCommodity();
        concerncommodity.setUserid(LoginServlet.getPhone());
        concerncommodity.setCommodityid(commodityid);
        new ManageConcernCommodity().addConcernCommodity(concerncommodity);    	        
	  }
 }
