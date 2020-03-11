package com.project.tool;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
public class DataBase 
 {
   public Connection orcl()
     {
	   Connection connection = null;
	   String conURL="jdbc:oracle:thin:@localhost:1522:orcl";
		  try {
			   Class.forName("oracle.jdbc.driver.OracleDriver");
		      }
		  catch (java.lang.ClassNotFoundException e) 
		      {
			   System.out.println(e.getMessage());
			  }	     
		  try {
			   connection=DriverManager.getConnection(conURL,"SYSTEM","Fantasy5282");
		      } 
		  catch (SQLException e) 
		      {
			    e.printStackTrace();
		      }
	   return connection;	   
     }   
	public static Connection connect() 
     {
	   Connection connection = null;
	   String conURL="jdbc:mysql://localhost:3306/Shoppingmall";
		  try {
			   Class.forName("com.mysql.jdbc.Driver");
		      }
		  catch (java.lang.ClassNotFoundException e) 
		      {
			   System.out.println(e.getMessage());
			  }	     
		  try {
			   connection=DriverManager.getConnection(conURL,"root","281435");
		      } 
		  catch (SQLException e) 
		      {
			    e.printStackTrace();
		      }
	   return connection;
     }
   public static void connection(Connection connection)
     {
	    try { 
			  if(connection!=null)
			    connection.close();
		    } 
	    catch (SQLException e) 
	        {
			  e.printStackTrace();
	        }
     }
   public static void statement(Statement statement)
     {
		try {
			  if(statement!=null)
			    statement.close();
		    } 
	    catch (SQLException e) 
	        {
			  e.printStackTrace();
	        }
     }
   public static void resultSet(ResultSet resultset)
     {   
		try {
			  if(resultset!=null)
			    resultset.close();
		    } 
	    catch (SQLException e) 
	        {
			  e.printStackTrace();
	        }
     }
   public static void preparedStatement(PreparedStatement preparedstatement)
     {
		try {
			  if(preparedstatement!=null) 
			    preparedstatement.close();
		    } 
	    catch (SQLException e) 
	        {
			  e.printStackTrace();
	        }
     }
 }