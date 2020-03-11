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
import com.backstage.user.ManageShoppcartColumn;
import com.project.model.Commodity;
import com.project.model.ShoppcartColumn;
import com.servlet.tool.LoginServlet;
public class ManageShoppcartColumnServlet extends HttpServlet 
  {
	public void doGet(HttpServletRequest request,HttpServletResponse response) //增加一个商品到购物车里
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
        String commodityid=request.getParameter("commodityid");
        String number=request.getParameter("number");
        Commodity commodity=new ManageCommodity().queryCommodity(commodityid);
        ShoppcartColumn shoppcartColumn=new ShoppcartColumn();
        shoppcartColumn.setId(commodity.getId());
        shoppcartColumn.setUserid(LoginServlet.getPhone());
        shoppcartColumn.setStore(commodity.getStore());
        shoppcartColumn.setImg(commodity.getImg());
        shoppcartColumn.setName(commodity.getName());
        shoppcartColumn.setIntroduce(commodity.getIntroduce());
        shoppcartColumn.setPrice(commodity.getPrice());
        shoppcartColumn.setNumber(number);
        new ManageShoppcartColumn().addComm(shoppcartColumn);
	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) //查询购物车里的信息
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		List<ShoppcartColumn> record=new ArrayList<ShoppcartColumn>();
		record=new ManageShoppcartColumn().queryComm(LoginServlet.getPhone());
		JSONArray jsonarray = new JSONArray();
        int totalnumber=0;      //商品总的数量 
        float totalprice=0;    //商品总的价格
		if(record!=null)
          {
		    for(ShoppcartColumn shoppcartColumn:record)
		      {
		        JSONObject jsonobject = new JSONObject();
		        jsonobject.put("id",shoppcartColumn.getId());
		        jsonobject.put("name",shoppcartColumn.getName()); 
		        jsonobject.put("img",shoppcartColumn.getImg());  
		        jsonobject.put("introduce",shoppcartColumn.getIntroduce());
		        jsonobject.put("price",shoppcartColumn.getPrice()); 
		        jsonobject.put("number",shoppcartColumn.getNumber()); 
		        jsonobject.put("subtotal",Float.valueOf(shoppcartColumn.getPrice())*Float.valueOf(shoppcartColumn.getNumber()));  
		        jsonobject.put("store", shoppcartColumn.getStore());
		        jsonarray.put(jsonobject);
		        totalnumber+=Integer.valueOf(shoppcartColumn.getNumber());
		        totalprice+=Float.valueOf(shoppcartColumn.getPrice())*Float.valueOf(shoppcartColumn.getNumber());
		      }
          }
	    JSONObject jo = new JSONObject();
	    jo.put("totalnumber",totalnumber);
	    jo.put("totalprice",totalprice); 
	    jsonarray.put(jo);
        ServletOutputStream os = response.getOutputStream();
        os.write(jsonarray.toString().getBytes());
        os.flush();
        os.close();	
	  }
  }