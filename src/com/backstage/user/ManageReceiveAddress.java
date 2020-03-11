package com.backstage.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.project.model.ReceiveAddress;
import com.project.tool.DataBase;
public class ManageReceiveAddress 
 {
   public List<ReceiveAddress> queryReceiveAddress(String user)  //根据用户ID查询用户的收货地址信息
	 {  
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		List<ReceiveAddress> record=new ArrayList<ReceiveAddress>();
		try {
			  String sql = "select * from receivedddress where user="+user;;
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);
			  while(resultset.next())
				 {      
				   ReceiveAddress receiveaddress=new ReceiveAddress();
				   receiveaddress.setProvince(resultset.getString("province"));
				   receiveaddress.setCity(resultset.getString("city"));
				   receiveaddress.setCounty(resultset.getString("county"));
				   receiveaddress.setName(resultset.getString("name"));
				   receiveaddress.setAddress(resultset.getString("address"));
				   receiveaddress.setPhone(resultset.getString("phone"));
				   receiveaddress.setFixedphone(resultset.getString("fixedphone"));
				   receiveaddress.setEmail(resultset.getString("email"));
				   receiveaddress.setAlias(resultset.getString("alias"));
				   record.add(receiveaddress);                  				      
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
   public void addReceiveAddress(ReceiveAddress receiveaddress)  //用户添加一个收货地址信息
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "insert into receivedddress(user,province,city,county,name,address,phone,"
			 		    + "fixedphone,email,alias) values(?,?,?,?,?,?,?,?,?,?)";
		     preparedstatement = connection.prepareStatement(sql);	     
		     preparedstatement.setString(1,receiveaddress.getUser());
		     preparedstatement.setString(2,receiveaddress.getProvince());
		     preparedstatement.setString(3,receiveaddress.getCity());
		     preparedstatement.setString(4,receiveaddress.getCounty());
		     preparedstatement.setString(5,receiveaddress.getName());
		     preparedstatement.setString(6,receiveaddress.getAddress());
		     preparedstatement.setString(7,receiveaddress.getPhone());
		     preparedstatement.setString(8,receiveaddress.getFixedphone());
		     preparedstatement.setString(9,receiveaddress.getEmail());
		     preparedstatement.setString(10,receiveaddress.getAlias());
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
   public void deleteReceiveAddress(String id)   //用户删除一个收货地址信息
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "delete from receivedddress where id="+id;
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
   public void updateReceiveAddress(ReceiveAddress receiveaddress)   //用户修改一个收货地址信息
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "update receivedddress set province=?,city=?,county=?,name=?,"
			 		    + "address=?,phone=?,fixedphone=?,email=?,alias=? where id="+receiveaddress.getId();
		     preparedstatement = connection.prepareStatement(sql);	   
		     preparedstatement.setString(1,receiveaddress.getProvince());
		     preparedstatement.setString(2,receiveaddress.getCity());
		     preparedstatement.setString(3,receiveaddress.getCounty());
		     preparedstatement.setString(4,receiveaddress.getName());
		     preparedstatement.setString(5,receiveaddress.getAddress());
		     preparedstatement.setString(6,receiveaddress.getPhone());
		     preparedstatement.setString(7,receiveaddress.getFixedphone());
		     preparedstatement.setString(8,receiveaddress.getEmail());
		     preparedstatement.setString(9,receiveaddress.getAlias());
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