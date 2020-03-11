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
	public void doGet(HttpServletRequest request,HttpServletResponse response) //��ѯ��Ʒ��Ϣ
			throws ServletException, IOException
	  {
		 request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 keyword=request.getParameter("keyword");   //��ȡ�ؼ���
		 List<Commodity> record=new ManageCommodity().queryCommodity(keyword,"",1); //��ѯ	
		 String commnumber="";
		 int number=new ManageCommodity().queryCommodityNumber(keyword);   //��ѯ��Ʒ����
		 if((number/10000)>0)
			commnumber=String.valueOf(number/10000)+"��";
		 else if((number/100)==0)
			commnumber=String.valueOf(number)+"��";
		 else
			commnumber=String.valueOf((number/100)*100)+"+";
		 int pagenumber=number/15+1;
         JSONArray json = new JSONArray();
         if(record!=null)    //��ѯ�����Ϊ��
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
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss())/10000)+"��";
			   else if((Integer.valueOf(commodity.getDiscuss())/100)==0)
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss()))+"��";
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
	public void doPost(HttpServletRequest request,HttpServletResponse response) //����ҳ����ʾ����Ʒ��Ϣ
			throws ServletException, IOException
	  {  
	     request.setCharacterEncoding("utf-8");
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
	     response.setHeader("Cache-Control", "no-cache");
		 response.setHeader("Pragma", "no-cache");
		 String sort=request.getParameter("sort");       //ѡ�������ʽ
		 String choice=request.getParameter("choice");   //ѡ����һҳ������һҳ
		 String current=request.getParameter("current"); //��ǰҳ��
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
		 List<Commodity> record=new ManageCommodity().queryCommodity(keyword,sort,startpage); //��ѯ	
         JSONArray json = new JSONArray();
         if(record!=null)    //��ѯ�����Ϊ��
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
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss())/10000)+"��";
			   else if((Integer.valueOf(commodity.getDiscuss())/100)==0)
				  discussnumber=String.valueOf(Integer.valueOf(commodity.getDiscuss()))+"��";
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