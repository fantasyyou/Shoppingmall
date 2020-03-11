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
import com.backstage.user.ManageConcernCommodity;
import com.project.model.Commodity;
import com.project.model.ConcernCommodity;
import com.servlet.tool.LoginServlet;
public class QueryConcernCommodityServlet extends HttpServlet
 {  
   public static int start=0;  //起始查询位置
   public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException, IOException
	  {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 String choice=request.getParameter("choice");
		 List<ConcernCommodity> concerncommodityid;
		 if(choice.equals("previous"))
		   {
			 start=start-5;
			 if(start<0)
			   start=start+5;
			 concerncommodityid=new ManageConcernCommodity().queryConcernCommodity(LoginServlet.getPhone(),start);
			 
		   }
		 else if(choice.equals("next"))
		   {
			 start=start+5;
			 concerncommodityid=new ManageConcernCommodity().queryConcernCommodity(LoginServlet.getPhone(),start);
			 if(concerncommodityid==null)
			   {
				 start=start-5;
				 concerncommodityid=new ManageConcernCommodity().queryConcernCommodity(LoginServlet.getPhone(),start);				 
			   }
		   }
		 else
		   concerncommodityid=new ManageConcernCommodity().queryConcernCommodity(LoginServlet.getPhone(),start);
		 JSONArray json = new JSONArray();
		 if(concerncommodityid!=null)    //查询结果不为空
	      {
	        for(ConcernCommodity concerncommodity:concerncommodityid)
		      {
		        JSONObject jsonobject = new JSONObject();
		        Commodity commodity=new ManageCommodity().queryCommodity(concerncommodity.getCommodityid());
		        jsonobject.put("id",commodity.getId());
		        jsonobject.put("img",commodity.getImg()); 
		        jsonobject.put("name",commodity.getName());  
		        jsonobject.put("price",commodity.getPrice());
		        json.put(jsonobject);
		      }
	      }
	     ServletOutputStream os = response.getOutputStream();
	     os.write(json.toString().getBytes());
	     os.flush();
	     os.close(); 
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
