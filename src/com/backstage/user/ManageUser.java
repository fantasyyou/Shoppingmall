package com.backstage.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.project.model.User;
import com.project.tool.DataBase;;
public class ManageUser 
 {
   public User queryUser(String phone,String name)  //查询手机号或用户名是否可用
	 {  
	    String query="";
	    if(!phone.equals("")&&!phone.equals(" "))
	       query=query+" or phone"+"='"+phone+"'";
		if(!name.equals("")&&!name.equals(" "))
		   query=query+" or name"+"='"+name+"'";
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		User user=new User();
		try {
			  String sql = "select * from user where "+query.substring(4);
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);
			  while(resultset.next())
				 {
                   user.setPhone(resultset.getString("phone")); //手机号或用户名已存在
                   return user;
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
		return null;
	 }
   public User verificationUser(User user)  //验证码用户身份
	 {  
	    Connection connection = DataBase.connect();
		Statement statement=null;
		ResultSet resultset=null;
		User users=new User();
		try { 
			  String sql = "select * from user where phone="+user.getPhone();
			  statement = connection.createStatement();
			  resultset = statement.executeQuery(sql);
			  while(resultset.next())
				 { 
				   if(resultset.getString("code").equals(user.getCode())) {
					   users.setPhone(resultset.getString("phone"));
					   users.setPower(resultset.getString("power"));
				     }
				   else {
					   users.setPhone(resultset.getString("phone"));
					   users.setPower(" ");
					 }
                   return users;
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
		return null;
	 }
   public void addUser(User user)  //增加一个用户
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "insert into user(phone,name,code,power) values(?,?,?,?)";
		     preparedstatement = connection.prepareStatement(sql);	     
		     preparedstatement.setString(1,user.getPhone());
		     preparedstatement.setString(2,user.getName());
		     preparedstatement.setString(3,user.getCode());
		     preparedstatement.setString(4,"普通用户");
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
   public void updateUser(User user) //修改用户的密码
     {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   String sql = "update user set code=? where phone=?";
       try {
  	         preparedstatement = connection.prepareStatement(sql);
		     preparedstatement.setString(1,user.getCode());
		     preparedstatement.setString(2,user.getPhone());
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
