package com.servlet.user;
import java.io.IOException;
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
public class AddBillServlet extends HttpServlet
 {
	public void doGet(HttpServletRequest request,HttpServletResponse response) //查询商品信息
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
        String commodityid=request.getParameter("commodityid");
        Commodity commodity=new ManageCommodity().queryCommodity(commodityid); 
        ShoppcartColumn shoppcartColumn=new ShoppcartColumn();  /*添加到购物车*/
        shoppcartColumn.setId(commodity.getId());
        shoppcartColumn.setUserid(LoginServlet.getPhone());
        shoppcartColumn.setStore(commodity.getStore());
        shoppcartColumn.setImg(commodity.getImg());
        shoppcartColumn.setName(commodity.getName());
        shoppcartColumn.setIntroduce(commodity.getIntroduce());
        shoppcartColumn.setPrice(commodity.getPrice());
        shoppcartColumn.setNumber("1");
        int result=new ManageShoppcartColumn().addComm(shoppcartColumn);
        if(result==1)  //购物车不存在这个商品
          {
	        JSONObject jsonobject = new JSONObject();              /*向前端发送数据*/
	        JSONArray jsonarray = new JSONArray();
	        jsonobject.put("id",shoppcartColumn.getId());
	        jsonobject.put("name",shoppcartColumn.getName()); 
	        jsonobject.put("img",shoppcartColumn.getImg());  
	        jsonobject.put("introduce",shoppcartColumn.getIntroduce());
	        jsonobject.put("price",shoppcartColumn.getPrice()); 
	        jsonobject.put("subtotal",Float.valueOf(shoppcartColumn.getPrice())*Float.valueOf(shoppcartColumn.getNumber()));  
	        jsonobject.put("store", shoppcartColumn.getStore());
	        jsonarray.put(jsonobject);
	        ServletOutputStream os = response.getOutputStream();
	        os.write(jsonarray.toString().getBytes());
	        os.flush();
	        os.close();	
          }
	  }
	public void doPost(HttpServletRequest request,HttpServletResponse response) //修改商品购买数量
			throws ServletException, IOException
	  {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
	    response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
        String[] information=request.getParameter("information").split(",");	
        new ManageShoppcartColumn().updateComm(information[0],LoginServlet.getPhone(),information[1]);
	  }
 }