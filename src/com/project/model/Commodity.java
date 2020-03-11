package com.project.model;
public class Commodity 
 { 
   private String id;        //商品编号
   private String img;       //商品图片
   private String price;     //商品价格
   private String name;      //商品名称
   private String introduce; //商品介绍
   private String discuss;   //商品评论数
   private String store;     //店铺名称
   private String sales;     //销售量
   private String keyword;   //商品关键字
   
   public String getId() {
	    return id;
    }
   public void setId(String id) {
	    this.id = id;
    }
   public String getImg() {
		return img;
	}
   public void setImg(String img) {
		this.img = img;
	}
   public String getPrice() {
		return price;
	}
   public void setPrice(String price) {
		this.price = price;
	}
   public String getName() {
		return name;
	}
   public void setName(String name) {
		this.name = name;
	}
   public String getIntroduce() {
		return introduce;
	}
   public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
   public String getDiscuss() {
		return discuss;
	}
   public void setDiscuss(String discuss) {
		this.discuss = discuss;
	}
   public String getStore() {
		return store;
	}
   public void setStore(String store) {
		this.store = store;
	}
   public String getSales() {
	    return sales;
    }
   public void setSales(String sales) {
	    this.sales = sales;
    }
   public String getKeyword() {
		return keyword;
	}
   public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
 }
