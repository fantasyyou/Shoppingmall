package com.backstage.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.project.model.ConcernCommodity;
import com.project.tool.DataBase;
public class ManageConcernCommodity {
 public List<ConcernCommodity> queryConcernCommodity(String userid)  
   {  
	Connection connection = DataBase.connect();
	Statement statement=null;
	ResultSet resultset=null;
	List<ConcernCommodity> record=new ArrayList<ConcernCommodity>();
	try {
		  String sql = "select * from concerncommodity where userid="+userid;;
		  statement = connection.createStatement();
		  resultset = statement.executeQuery(sql);
		  while(resultset.next())
			 {      
			   ConcernCommodity concerncommodity=new ConcernCommodity();
			   concerncommodity.setUserid(resultset.getString("userid"));
			   concerncommodity.setCommodityid(resultset.getString("commodityid"));
				   record.add(concerncommodity);                  				      
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
 public List<ConcernCommodity> queryConcernCommodity(String userid,int start)  
   {  
	Connection connection = DataBase.connect();
	Statement statement=null;
	ResultSet resultset=null;
	List<ConcernCommodity> record=new ArrayList<ConcernCommodity>();
	try {
		  String sql = "select * from concerncommodity where userid="+userid+" limit "+start+",5";;
		  statement = connection.createStatement();
		  resultset = statement.executeQuery(sql);
		  while(resultset.next())
			 {      
			   ConcernCommodity concerncommodity=new ConcernCommodity();
			   concerncommodity.setUserid(resultset.getString("userid"));
			   concerncommodity.setCommodityid(resultset.getString("commodityid"));
				   record.add(concerncommodity);                  				      
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
 public void addConcernCommodity(ConcernCommodity concerncommodity)  
   {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "insert into concerncommodity(userid,commodityid) values(?,?)";
		     preparedstatement = connection.prepareStatement(sql);	     
		     preparedstatement.setString(1,concerncommodity.getUserid());
		     preparedstatement.setString(2,concerncommodity.getCommodityid());
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
 public void deleteConcernCommodity(String userid,String commodityid)   
   {
	   Connection connection = DataBase.connect();
	   PreparedStatement preparedstatement=null;
	   try {
			 String sql = "delete from concerncommodity where userid="+userid+" and commodityid="+commodityid;
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
}
