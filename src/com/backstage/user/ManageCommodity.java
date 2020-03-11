package com.backstage.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.project.model.Commodity;
import com.project.tool.DataBase;
public class ManageCommodity 
 { 
   public int queryCommodityNumber(String keyword)  //根据关键字查询商品数量
	 {  
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		int number=0;
		try {
			  String sql = "select * from commodity where name like '%"+keyword+"%'";
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);	
			  resultset.last();
			  number=resultset.getRow();  //返回结果数量
		    }
	    catch (SQLException e) {
		      e.printStackTrace();
	       } 
	    finally {
	    	DataBase.connection(connection);
	    	DataBase.statement(statement);
	    	DataBase.resultSet(resultset);
	      }
		return number;  
	 }
   public List<Commodity> queryCommodity(String keyword,String sort,int startpage)  //根据关键字查询商品信息
	 {  
	    int end=startpage*15;
	    int start=end-15;
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		List<Commodity> record=new ArrayList<Commodity>();
		try {
			  String sql = "select * from commodity where name like '%"+keyword+"%'";
			  if(!sort.equals("")&&!sort.equals(" "))
				sql =sql+" order by "+sort+" desc";
			  sql=sql+" limit "+start+",15";
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);
			  while(resultset.next())
				 { 
					Commodity commodity=new Commodity();
					commodity.setId(resultset.getString("id"));
					commodity.setImg(resultset.getString("img"));
					commodity.setPrice(resultset.getString("price"));
					commodity.setName(resultset.getString("name"));
					commodity.setDiscuss(resultset.getString("discuss"));
					commodity.setSales(resultset.getString("sales"));
					commodity.setStore(resultset.getString("store"));
					record.add(commodity);                  				      
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
   public void addCommodity(Commodity commodity)  //增加一个商品信息
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "insert into commodity(id,img,price,name,introduce,discuss,store,sales,keyword) values(?,?,?,?,?,?,?,?,?)";
		     preparedstatement = connection.prepareStatement(sql);	     
		     preparedstatement.setString(1,commodity.getId());
		     preparedstatement.setString(2,commodity.getImg());
		     preparedstatement.setString(3,commodity.getPrice());
		     preparedstatement.setString(4,commodity.getIntroduce());
		     preparedstatement.setString(5,commodity.getName());
		     preparedstatement.setString(6,commodity.getDiscuss());
		     preparedstatement.setString(7,commodity.getStore());
		     preparedstatement.setString(8,commodity.getSales());
		     preparedstatement.setString(9,commodity.getKeyword());
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
   public Commodity queryCommodity(String id)  //查询一个商品信息
     {
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		Commodity commodity=new Commodity();
		try {
			  String sql = "select * from commodity where id="+id;
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);
			  while(resultset.next())
				 { 
					commodity.setId(resultset.getString("id"));
					commodity.setImg(resultset.getString("img"));
					commodity.setPrice(resultset.getString("price"));
					commodity.setName(resultset.getString("name"));
					commodity.setIntroduce(resultset.getString("introduce"));
					commodity.setDiscuss(resultset.getString("discuss"));
					commodity.setSales(resultset.getString("sales"));
					commodity.setStore(resultset.getString("store"));               				      
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
		return commodity;
     }
 }
