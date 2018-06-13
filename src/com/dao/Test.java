package com.dao;

import com.service.WarehouseBusiness;

public class Test {
	//这里写测试
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			WarehouseBusiness wb=new WarehouseBusiness();
			//int tmp=wb.allotWarehouse("A","B","B00000001",20,8,160);
			//int tmp=wb.saleOutWarehouse("B00000001",20,8,160,"B","in","invoice","xxxxarticle","只","type111","kg","xxxxcompany","AA","BB","cc","comment");
			//int tmp=wb.pickArticle("B00000001",20,8,160,"B","in","xxxxarticle","zhi","type111","kg","xxxxcompany","AA","BB","cc","comment","xxwarkshop","xxuser","producesth");
			//int tmp=wb.putInWarehouse("B00000002",20,8,160,"B","in");
			//System.out.println(tmp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
