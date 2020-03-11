package com.backstage.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.project.model.Commodity;
import com.project.model.Discuss;
import com.project.tool.DataBase;
public class ManageDiscuss 
 {
   public void addDiscuss(Discuss discuss)  //增加一条评论信息
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 Date date=new Date();
			 SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			 String sql = "insert into discuss(commodityid,username,content,time) values(?,?,?,?)";
		     preparedstatement = connection.prepareStatement(sql);	     
		     preparedstatement.setString(1,discuss.getCommodityid());
		     preparedstatement.setString(2,discuss.getUsername());
		     preparedstatement.setString(3,discuss.getContent());
		     preparedstatement.setString(4,simpledateformat.format(date));
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
   public List<Discuss> queryDiscuss(String commodityid)  //根据商品ID查询商品评论
	 {  
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		List<Discuss> record=new ArrayList<Discuss>();
		try {
			  String sql = "select * from discuss where commodityid="+commodityid;
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);
			  while(resultset.next())
				 { 
				    Discuss discuss=new Discuss();
				    discuss.setUsername(resultset.getString("username"));
				    discuss.setContent(resultset.getString("content"));
				    discuss.setTime(resultset.getString("time"));
					record.add(discuss);                  				      
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
 }
