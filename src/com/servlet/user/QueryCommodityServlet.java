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
import com.backstage.user.ManageCommodity;
import com.project.model.Commodity;
public class QueryCommodityServlet extends HttpServlet
  { 
	static String keyword="spring";
	public void doGet(HttpServletRequest request,HttpServletResponse response) //查询商品信息
			throws ServletException, IOException
	  {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 keyword=request.getParameter("keyword");   //获取关键字
		 List<Commodity> record=new ManageCommodity().queryCommodity(keyword,"",1); //查询	
		 String commnumber="";
		 int number=new ManageCommodity().queryCommodityNumber(keyword);   //查询商品数量
		 if((number/10000)>0)
			commnumber=String.valueOf(number/10000)+"万";
		 else if((number/100)==0)
			commnumber=String.valueOf(number)+"件";
		 else
			commnumber=String.valueOf((number/100)*100)+"+";
		 int pagenumber=number/15+1;
         JSONArray json = new JSONArray();
         if(record!=null)    //查询结果不为空
           {
            for(Commodity commodity:record)
        	  {
		       JSONObject jo = new JSONObject();
		       jo.put("id",commodity.getId());
		       jo.put("img",commodity.getImg()); 
		       jo.put("price",commodity.getPrice());  
		       jo.put("name",commodity.getName());
			   String discussnumber="";
			   if((Integer.valueOf(commodity.getDiscuss())/10000)>0)
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss())/10000)+"万";
			   else if((Integer.valueOf(commodity.getDiscuss())/100)==0)
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss()))+"件";
			   else
				  discussnumber=String.valueOf((Integer.valueOf(commodity.getDiscuss())/100)*100)+"+";
			   jo.put("discussnumber",discussnumber); 
		       jo.put("store",commodity.getStore());  
		       jo.put("sales",commodity.getSales());  
		       json.put(jo);
		      }
           }
         if(number>0)
           {
	         JSONObject jo = new JSONObject();
	         jo.put("commnumber",commnumber);
	         jo.put("pagenumber",pagenumber);  
	         json.put(jo);
           }
         ServletOutputStream os = response.getOutputStream();
         os.write(json.toString().getBytes());
         os.flush();
         os.close();
	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) //更新页面显示的商品信息
			throws ServletException, IOException
	  {  
	     request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 String sort=request.getParameter("sort");       //选择的排序方式
		 String choice=request.getParameter("choice");   //选择上一页还是下一页
		 String current=request.getParameter("current"); //当前页码
		 int startpage=1;
		 if(sort.equals("sort-1"))
		    sort="";
		 if(sort.equals("sort-2"))
		    sort="sales";
		 if(sort.equals("sort-3"))
		    sort="discuss";
		 if(sort.equals("sort-4"))
		    sort="price";
		 if(choice.equals("previous-page"))
		    startpage=Integer.valueOf(current)-1;
		 if(choice.equals("next-page"))
			startpage=Integer.valueOf(current)+1;
		 List<Commodity> record=new ManageCommodity().queryCommodity(keyword,sort,startpage); //查询	
         JSONArray json = new JSONArray();
         if(record!=null)    //查询结果不为空
           {
            for(Commodity commodity:record)
      	      {
		       JSONObject jo = new JSONObject();
		       jo.put("id",commodity.getId());
		       jo.put("img",commodity.getImg()); 
		       jo.put("price",commodity.getPrice());  
		       jo.put("name",commodity.getName());
			   String discussnumber="";
			   if((Integer.valueOf(commodity.getDiscuss())/10000)>0)
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss())/10000)+"万";
			   else if((Integer.valueOf(commodity.getDiscuss())/100)==0)
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss()))+"件";
			   else
				  discussnumber=String.valueOf((Integer.valueOf(commodity.getDiscuss())/100)*100)+"+";
			   jo.put("discussnumber",discussnumber); 
		       jo.put("store",commodity.getStore());  
		       jo.put("sales",commodity.getSales());  
		       json.put(jo);
		      }
           }
         ServletOutputStream os = response.getOutputStream();
         os.write(json.toString().getBytes());
         os.flush();
         os.close();
	  }  
  }