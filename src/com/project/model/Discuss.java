package com.project.model;
public class Discuss 
 {
   private String commodityid;  //商品ID
   private String username;     //用户昵称
   private String content;      //评价内容
   private String time;         //评价时间
   
   public String getCommodityid() {
		return commodityid;
	}
   public void setCommodityid(String commodityid) {
		this.commodityid = commodityid;
	}
   public String getUsername() {
		return username;
	}
   public void setUsername(String username) {
		this.username = username;
	}
   public String getContent() {
		return content;
	}
   public void setContent(String content) {
		this.content = content;
	}
   public String getTime() {
		return time;
	}
   public void setTime(String time) {
		this.time = time;
	}
 }