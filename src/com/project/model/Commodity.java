package com.project.model;
public class Commodity 
 { 
   private String id;        //��Ʒ���
   private String img;       //��ƷͼƬ
   private String price;     //��Ʒ�۸�
   private String name;      //��Ʒ����
   private String introduce; //��Ʒ����
   private String discuss;   //��Ʒ������
   private String store;     //��������
   private String sales;     //������
   private String keyword;   //��Ʒ�ؼ���
   
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
