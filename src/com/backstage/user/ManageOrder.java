package com.backstage.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.project.model.Order;
import com.project.model.ShoppcartColumn;
import com.project.tool.DataBase;
public class ManageOrder
 {
   public List<Order> queryComm(String userid)  //根据用户编号查询用户的购物车商品信息
	 {  
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		List<Order> record=new ArrayList<Order>();
		try {
			  String sql = "select * from shoppcartcolumn where userid="+"'"+userid+"'";
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);
			  while(resultset.next())
				 { 
				    Order order=new Order();
				    order.setId(resultset.getString("id"));
				    order.setUserid(resultset.getString("userid"));
				    order.setImg(resultset.getString("img"));
				    order.setStore(resultset.getString("store"));
				    order.setName(resultset.getString("name"));
				    order.setIntroduce(resultset.getString("introduce"));
				    order.setPrice(resultset.getString("price"));
				    order.setNumber(resultset.getString("number"));
				    order.setStore(resultset.getString("state"));
					record.add(order);                  				      
				 }
		    }
	    catch (SQLException e) {
		      e.printStackTrace();
	       } 
	    finally {
	    	DataBase.connection(connection);
	    	DataBase.statement(statement);
	    	DataBase.resultSet(resultset);
	      }
        if(record.size()!=0)
	      return record;
        else
          return null;    
	 }
   public int addComm(ShoppcartColumn shoppcartcolumn)  //用户增加一个商品到购物车里
     { 
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "insert into shoppcartcolumn(id,userid,img,name,introduce,price,number,store) values(?,?,?,?,?,?,?,?)";
		     preparedstatement = connection.prepareStatement(sql);	     
		     preparedstatement.setString(1,shoppcartcolumn.getId());
		     preparedstatement.setString(2,shoppcartcolumn.getUserid());
		     preparedstatement.setString(3,shoppcartcolumn.getImg());
		     preparedstatement.setString(4,shoppcartcolumn.getName());
		     preparedstatement.setString(5,shoppcartcolumn.getIntroduce());
		     preparedstatement.setString(6,shoppcartcolumn.getPrice());
		     preparedstatement.setString(7,shoppcartcolumn.getNumber());
		     preparedstatement.setString(8,shoppcartcolumn.getStore());
		     preparedstatement.executeUpdate();
	       }     
	   catch (SQLException e) {
		     e.printStackTrace();
		     return 0;
	       } 
	   finally { 
	    	DataBase.connection(connection);
		    DataBase.preparedStatement(preparedstatement);
	      }
	   return 1;
     }
   public void deleteComm(String id,String userid)   //删除一个商品
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "delete from shoppcartcolumn where id="+"'"+id+"'"+" and userid="+"'"+userid+"'";
		     preparedstatement = connection.prepareStatement(sql);	     
		     preparedstatement.executeUpdate();
	       }     
	   catch (SQLException e) {
		     e.printStackTrace();
	       } 
	   finally { 
	    	DataBase.connection(connection);
		    DataBase.preparedStatement(preparedstatement);
	      }	   
     }
   public void updateComm(String id,String userid,String number)   //用户修改一个收货地址信息
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "update shoppcartcolumn set number=? where id=? and userid=?";
		     preparedstatement = connection.prepareStatement(sql);	   
		     preparedstatement.setString(1,number);
		     preparedstatement.setString(2,id);
		     preparedstatement.setString(3,userid);
		     preparedstatement.executeUpdate();
	       }     
	   catch (SQLException e) {
		     e.printStackTrace();
	       } 
	   finally { 
	    	DataBase.connection(connection);
		    DataBase.preparedStatement(preparedstatement);
	      }	   
     }
 }