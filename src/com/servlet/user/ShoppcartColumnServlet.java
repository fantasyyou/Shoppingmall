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
import com.backstage.user.ManageShoppcartColumn;
import com.project.model.Commodity;
import com.project.model.ShoppcartColumn;
import com.servlet.tool.LoginServlet;
public class ShoppcartColumnServlet extends HttpServlet 
 {
	public void doGet(HttpServletRequest request,HttpServletResponse response) //��ѯ��Ʒ��Ϣ
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
	    List<ShoppcartColumn> record=new ManageShoppcartColumn().queryComm(LoginServlet.getPhone());
        JSONArray json = new JSONArray();
        int totalnumber=0;   //��Ʒ�ܵ����� 
        float totalprice=0;    //��Ʒ�ܵļ۸�
        if(record!=null)
          {
		    for(ShoppcartColumn shoppcartcolumn:record)
		      {
		        JSONObject jo = new JSONObject();
		        jo.put("id",shoppcartcolumn.getId());
		        jo.put("userid",shoppcartcolumn.getUserid()); 
		        jo.put("img",shoppcartcolumn.getImg());  
		        jo.put("name",shoppcartcolumn.getName());  
		        jo.put("price",shoppcartcolumn.getPrice());  
		        jo.put("number",shoppcartcolumn.getNumber());  
		        json.put(jo);
		        totalnumber+=Integer.valueOf(shoppcartcolumn.getNumber());
		        totalprice+=Float.valueOf(shoppcartcolumn.getPrice())*Float.valueOf(shoppcartcolumn.getNumber());
		      }
		    JSONObject jo = new JSONObject();
		    jo.put("totalnumber","��"+totalnumber+"����Ʒ");
		    jo.put("totalprice","���ƣ�"+totalprice); 
		    json.put(jo);
          }
        ServletOutputStream os = response.getOutputStream();
        os.write(json.toString().getBytes());
        os.flush();
        os.close();	
	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) //ɾ��һ����Ʒ��Ϣ
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
        new ManageShoppcartColumn().deleteComm(request.getParameter("goodsid"),LoginServlet.getPhone());  //ɾ��һ����Ʒ
	  }
 }