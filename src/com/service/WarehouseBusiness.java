package com.service;
import java.sql.*;
import java.util.List;

import com.dao.DBDao;
import com.util.JDBCTool;

public class WarehouseBusiness{
	private Connection conn;
	private List rs;
	private DBDao dao;

	public WarehouseBusiness()/*throws SQLException*/ {//构�?�方法时创建链接
		try {
			conn=new JDBCTool().getThis().getConnection();
			conn.setAutoCommit(false);
			dao=new DBDao(conn);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public void close()throws SQLException {
		dao.close();
	}

	public int putInWarehouse(String in_article_number,String in_article_name,double in_quantity,double in_unit_price, double in_total_price,String in_warehous_name ,String in_affair_type) {
		int stat=1,cnt=0;
		try{
			Savepoint sp=conn.setSavepoint();//相当于start transaction
			Object[] param2= {in_article_number,in_warehous_name};
			rs=dao.select("SELECT * FROM tb_distribute_warehouse WHERE article_number=? AND warehous_name=?", 5, param2);
			if(rs.isEmpty()) {
				Object[] param3= {in_warehous_name,in_article_number,in_quantity,in_quantity, in_unit_price};
				cnt=dao.insert("INSERT INTO tb_distribute_warehouse values(?,?,?,?,?)", param3);
				if(cnt==0) {
					conn.rollback(sp);
					return 0;
				}
			}
			else {
				Object[] param4= {in_quantity,in_quantity,in_unit_price,in_article_number,in_warehous_name};
				cnt=dao.update("UPDATE tb_distribute_warehouse SET quantity=quantity+?,total_price=total_price+?*?" +
						"WHERE article_number=? and warehous_name=?", param4);
				if(cnt==0) {
					conn.rollback(sp);
					return 0;
				}
			}

			Object[] param5= {in_article_number};
			rs=dao.select("SELECT * FROM tb_general_warehouse WHERE article_number=?", 5, param5);
			if(rs.isEmpty()) {
				Object[] param6= {in_article_number,in_article_name,in_quantity,in_unit_price,in_total_price};
				cnt=dao.insert("INSERT INTO tb_general_warehouse VALUES(?,?,?,?,?);", param6);
				if(cnt==0) {
					conn.rollback(sp);
					return 0;
				}
			}else {
				Object[] param7= {in_quantity,in_quantity,in_unit_price,in_article_number};
				cnt=dao.update("UPDATE tb_general_warehouse SET quantity=quantity+?,total_price=total_price+?*? WHERE article_number=?", param7);
				if(cnt==0) {
					conn.rollback(sp);
					return 0;
				}
			}
			if(stat==1)conn.commit();
			else conn.rollback(sp);
		}catch(Exception e){
			e.printStackTrace();
			stat=0;
		}
		return stat;
	}

	public int putOutWarehouse(String out_article_number,String out_article_name,double out_quantity,double out_unit_price, double out_total_price,String out_warehous_name ,String out_affair_type) {
		int stat=1,cnt=0;
		try{
			Savepoint sp=conn.setSavepoint();//相当于start transaction
			Object[] param2= {out_article_number,out_warehous_name};
			rs=dao.select("SELECT * FROM tb_distribute_warehouse WHERE article_number=? AND warehous_name=?",5, param2);
			if(rs.isEmpty()) {//如果没有记录就结束
				conn.rollback(sp);
				return 0;
			}
			else {
				Object[] param4= {out_quantity,out_quantity,out_unit_price,out_article_number,out_warehous_name};
				System.out.println((double)((Object[])rs.get(0))[2]);
				if((double)((Object[])rs.get(0))[2]<out_quantity) {//如果数量小于减去数量就结束
					conn.rollback(sp);
					return 0;
				}
				if((double)((Object[])rs.get(0))[2]==out_quantity) {//如果数量相等，删去这条信息
					cnt=dao.delete("DELETE FROM tb_distribute_warehouse WHERE article_number=? AND warehous_name=?", param2);
					if(cnt==0) {
						conn.rollback(sp);
						return 0;
					}
				}
				else {//更新数据
					cnt=dao.update("UPDATE tb_distribute_warehouse SET quantity=quantity-?,total_price=total_price-?*? " +
							"WHERE article_number=? and warehous_name=?;", param4);
					if(cnt==0) {
						conn.rollback(sp);
						return 0;
					}
				}
			}
			Object[] param5= {out_article_number};
			rs=dao.select("SELECT * FROM tb_general_warehouse WHERE article_number=?", 5, param5);
			if(rs.isEmpty()) {//如果没有记录就结束
				conn.rollback(sp);
				return 0;
			}
			else {
				if((double)((Object[])rs.get(0))[2]<out_quantity) {//如果数量小于减去数量就结束
					conn.rollback(sp);
					return 0;
				}
				if((double)((Object[])rs.get(0))[2]==out_quantity) {//如果数量相等，删去这条信息
					cnt=dao.delete("DELETE FROM tb_general_warehouse WHERE article_number=?", param5);
				}
				else {//更新数据
					Object[] param7= {out_quantity,out_total_price,out_article_number};
					cnt=dao.update("UPDATE tb_general_warehouse SET quantity=quantity-?,total_price=total_price-? WHERE article_number=?", param7);
					if(cnt==0) {
						conn.rollback(sp);
						return 0;
					}
				}
			}
			if(stat==1)conn.commit();
			else conn.rollback(sp);
		}catch(Exception e){
			e.printStackTrace();
			stat=0;
		}
		return stat;
	}

	public int saleInWarehouse(String sale_in_article_number,double sale_in_quantity,double sale_in_unit_price, double sale_in_total_price,String sale_in_warehous_name ,String sale_in_affair_type,
							   String sale_in_invoice_number,String sale_in_article_name,String sale_in_specification,String sale_in_type,String sale_in_measurement,String sale_in_provider,
							   String sale_in_inspector,String sale_in_administrator,String sale_in_auditor,String sale_in_comment) {
		int stat=1,cnt=0;
		double a=0,b=0,c=0;
		String tmp;
		try{
			Savepoint sp=conn.setSavepoint();//相当于start transaction
			Object[] paramm= {sale_in_warehous_name,sale_in_article_number,sale_in_quantity,sale_in_unit_price,sale_in_total_price,sale_in_affair_type,
					sale_in_invoice_number, sale_in_article_name, sale_in_specification, sale_in_type, sale_in_measurement, sale_in_provider,
					sale_in_inspector, sale_in_administrator, sale_in_auditor, sale_in_comment};
			cnt=dao.insert("INSERT INTO tb_entry_warrant(warehous_name,article_number,quantity,unit_price,total_price,affair_type,"
					+ "time,invoice_number,article_name,specification,type,measurement,provider,inspector,administrator,auditor,comment)" +
					"VALUES(?,?,?,?,?,?,now(),?,?,?,?,?,?,?,?,?,?)",paramm);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}
			Object[] param1= {sale_in_article_number,sale_in_warehous_name};
			rs=dao.select("SELECT * " +
					"FROM tb_distribute_warehouse WHERE article_number=? AND warehous_name=?", 5, param1);
			if(rs.isEmpty()) {
				a=0;
				b=0;
				c=0;
			}else {
				a=(double)((Object[])rs.get(0))[2];
				b=(double)((Object[])rs.get(0))[3];
				c=(double)((Object[])rs.get(0))[4];
			}
			double later_quantity=a+sale_in_quantity;
			double later_total_price=c+sale_in_quantity*sale_in_unit_price;
			double later_unit_price=later_total_price/later_quantity;
			Object[] param= {sale_in_warehous_name,sale_in_article_number,sale_in_quantity,sale_in_unit_price,sale_in_total_price,later_quantity,later_unit_price,later_total_price,
					sale_in_specification, sale_in_type, sale_in_measurement};
			cnt=dao.insert("INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use," +
					"quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time,specification,type,measurement)" +
					"VALUES(?,?,NULL,NULL,NULL,?,?,?,?,?,?,'sale_in_article',now(),?,?,?)",param);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}

			if(putInWarehouse(sale_in_article_number,sale_in_article_name,sale_in_quantity,sale_in_unit_price,sale_in_total_price,sale_in_warehous_name ,"sale_in_article")==0) {
				conn.rollback(sp);
				return 0;
			}

			if(stat==1)conn.commit();
			else conn.rollback(sp);
		}catch(Exception e){
			e.printStackTrace();
			stat=0;
		}
		return stat;
	}


	public int saleOutWarehouse(String sale_out_article_number,double sale_out_quantity,double sale_out_unit_price, double sale_out_total_price,String sale_out_warehous_name ,String sale_out_affair_type,
								String sale_out_invoice_number,String sale_out_article_name,String sale_out_specification,String sale_out_type,String sale_out_measurement,String sale_out_provider,
								String sale_out_inspector,String sale_out_administrator,String sale_out_auditor,String sale_out_comment) {
		int stat=1,cnt=0;
		double a=0,b=0,c=0;
		String tmp;
		try{
			Savepoint sp=conn.setSavepoint();//相当于start transaction
			Object[] paramm= {sale_out_warehous_name,sale_out_article_number,sale_out_quantity,sale_out_unit_price,sale_out_total_price,sale_out_affair_type,
					sale_out_invoice_number, sale_out_article_name, sale_out_specification, sale_out_type, sale_out_measurement, sale_out_provider,
					sale_out_inspector, sale_out_administrator, sale_out_auditor, sale_out_comment};
			cnt=dao.insert("INSERT INTO tb_exit_warrant(warehous_name,article_number,quantity,unit_price,total_price,affair_type,"
					+ "time,invoice_number,article_name,specification,type,measurement,provider,inspector,administrator,auditor,comment)" +
					"VALUES(?,?,?,?,?,?,now(),?,?,?,?,?,?,?,?,?,?)",paramm);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}
			Object[] param1= {sale_out_article_number,sale_out_warehous_name};
			rs=dao.select("SELECT * " +
					"FROM tb_distribute_warehouse WHERE article_number=? AND warehous_name=?", 5, param1);

			if(rs.isEmpty()) {
				conn.rollback(sp);
				return 0;
			}
			a=(double)((Object[])rs.get(0))[2];
			b=(double)((Object[])rs.get(0))[3];
			c=(double)((Object[])rs.get(0))[4];
			double later_quantity=a-sale_out_quantity;
			double later_total_price=c-sale_out_quantity*sale_out_unit_price;
			double later_unit_price=later_total_price/later_quantity;
			Object[] param= {sale_out_warehous_name,sale_out_article_number,sale_out_quantity,sale_out_unit_price,sale_out_total_price,later_quantity,later_unit_price,later_total_price,
					sale_out_specification, sale_out_type, sale_out_measurement};
			cnt=dao.insert("INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use," +
					"quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time,specification,type,measurement)" +
					"VALUES(?,?,?,?,?,NULL,NULL,NULL,?,?,?,'sale_out_article',now(),?,?,?)",param);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}

			if(putOutWarehouse(sale_out_article_number,sale_out_article_name,sale_out_quantity,sale_out_unit_price,sale_out_total_price,sale_out_warehous_name ,"sale_out_article")==0) {
				conn.rollback(sp);
				return 0;
			}

			if(stat==1)conn.commit();
			else conn.rollback(sp);
		}catch(Exception e){
			e.printStackTrace();
			stat=0;
		}
		return stat;
	}

	//退料
	public int returnArticle(String return_article_number,double return_quantity,double return_unit_price, double return_total_price,String return_warehous_name ,String return_affair_type,
							 String return_article_name,String return_specification,String return_type,String return_measurement,String return_provider,
							 String return_inspector,String return_administrator,String return_auditor,String return_comment,String return_workshop,String return_user,String return_use) {
		int stat=1,cnt=0;
		double a=0,b=0,c=0;
		String tmp;
		try{
			Savepoint sp=conn.setSavepoint();//相当于start transaction
			Object[] paramm= {return_warehous_name,return_article_number,return_quantity,return_unit_price,return_total_price,return_affair_type,
					return_article_name,return_specification,return_type,return_measurement,return_provider,
					return_inspector,return_administrator,return_auditor,return_comment,return_workshop,return_user,return_use};
			cnt=dao.insert("INSERT INTO tb_return_warrant(warehous_name,article_number,quantity,unit_price,total_price,affair_type,"
					+ "time,article_name,specification,type,measurement,provider,inspector,administrator,auditor,comment,workshop,article_user,use_aim)" +
					"VALUES(?,?,?,?,?,?,now(),?,?,?,?,?,?,?,?,?,?,?,?)",paramm);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}
			Object[] param1= {return_article_number,return_warehous_name};
			rs=dao.select("SELECT * " +
					"FROM tb_distribute_warehouse WHERE article_number=? AND warehous_name=?", 5, param1);
			if(rs.isEmpty()) {
				conn.rollback(sp);
				return 0;
			}
			a=(double)((Object[])rs.get(0))[2];
			b=(double)((Object[])rs.get(0))[3];
			c=(double)((Object[])rs.get(0))[4];
			double later_quantity=a+return_quantity;
			double later_total_price=c+return_quantity*return_unit_price;
			double later_unit_price=later_total_price/later_quantity;
			Object[] param= {return_warehous_name,return_article_number,return_quantity,return_unit_price,return_total_price,later_quantity,later_unit_price,later_total_price,
					return_specification, return_type, return_measurement};
			cnt=dao.insert("INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use," +
					"quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time,specification,type,measurement)" +
					"VALUES(?,?,NULL,NULL,NULL,?,?,?,?,?,?,'return_article',now(),?,?,?)",param);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}

			if(putInWarehouse(return_article_number,return_article_name,return_quantity,return_unit_price,return_total_price,return_warehous_name ,"return_article")==0) {
				conn.rollback(sp);
				return 0;
			}

			if(stat==1)conn.commit();
			else conn.rollback(sp);
		}catch(Exception e){
			e.printStackTrace();
			stat=0;
		}
		return stat;
	}

	//领料
	public int pickArticle(String pick_article_number,double pick_quantity,double pick_unit_price, double pick_total_price,String pick_warehous_name ,String pick_affair_type,
						   String pick_article_name,String pick_specification,String pick_type,String pick_measurement,String pick_provider,
						   String pick_inspector,String pick_administrator,String pick_auditor,String pick_comment,String pick_workshop,String pick_user,String pick_use) {
		int stat=1,cnt=0;
		double a=0,b=0,c=0;
		String tmp;
		try{
			Savepoint sp=conn.setSavepoint();//相当于start transaction
			Object[] paramm= {pick_warehous_name,pick_article_number,pick_quantity,pick_unit_price,pick_total_price,pick_affair_type,
					pick_article_name,pick_specification,pick_type,pick_measurement,pick_provider,
					pick_inspector,pick_administrator,pick_auditor,pick_comment,pick_workshop,pick_user,pick_use};
			cnt=dao.insert("INSERT INTO tb_pick_warrant(warehous_name,article_number,quantity,unit_price,total_price,affair_type,"
					+ "time,article_name,specification,type,measurement,provider,inspector,administrator,auditor,comment,workshop,article_user,use_aim)" +
					"VALUES(?,?,?,?,?,?,now(),?,?,?,?,?,?,?,?,?,?,?,?)",paramm);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}
			Object[] param1= {pick_article_number,pick_warehous_name};
			rs=dao.select("SELECT * " +
					"FROM tb_distribute_warehouse WHERE article_number=? AND warehous_name=?", 5, param1);

			if(rs.isEmpty()) {
				conn.rollback(sp);
				return 0;
			}
			a=(double)((Object[])rs.get(0))[2];
			b=(double)((Object[])rs.get(0))[3];
			c=(double)((Object[])rs.get(0))[4];
			double later_quantity=a-pick_quantity;
			double later_total_price=c-pick_quantity*pick_unit_price;
			double later_unit_price=later_total_price/later_quantity;
			Object[] param= {pick_warehous_name,pick_article_number,pick_quantity,pick_unit_price,pick_total_price,later_quantity,later_unit_price,later_total_price,
					pick_specification, pick_type, pick_measurement};
			cnt=dao.insert("INSERT INTO tb_standing_book(warehous_name,article_number,quantity_buy,unit_price_buy,total_price_buy,quantity_use,unit_price_use,total_price_use," +
					"quantity_surplus,unit_price_surplus,total_price_surplus,affair_type,time,specification,type,measurement)" +
					"VALUES(?,?,?,?,?,NULL,NULL,NULL,?,?,?,'pick_article',now(),?,?,?)",param);
			if(cnt==0) {
				conn.rollback(sp);
				return 0;
			}

			if(putOutWarehouse(pick_article_number,pick_article_name,pick_quantity,pick_unit_price,pick_total_price,pick_warehous_name ,"pick_article")==0) {
				conn.rollback(sp);
				return 0;
			}

			if(stat==1)conn.commit();
			else conn.rollback(sp);
		}catch(Exception e){
			e.printStackTrace();
			stat=0;
		}
		return stat;
	}

	public int allotWarehouse(String from_warehouse,String to_warehouse,String allot_article_number,String allot_artilce_name,double allot_quantity,double allot_unit_price,double allot_total_price) {
		int stat=1;
		try{
			Savepoint sp=conn.setSavepoint();//相当于start transaction
			int stat1= new WarehouseBusiness().putOutWarehouse(allot_article_number,allot_artilce_name,allot_quantity,allot_unit_price,allot_total_price,from_warehouse,"allot");
			if(stat1==0){
				stat=0;
				conn.rollback(sp);
				return 0;
			}
			int stat2= new WarehouseBusiness().putInWarehouse(allot_article_number,allot_artilce_name,allot_quantity,allot_unit_price,allot_total_price,to_warehouse,"allot");
			if(stat2==0){
				stat=0;
				conn.rollback(sp);
				return 0;
			}
			if(stat==1)conn.commit();
			else conn.rollback(sp);
		}catch(Exception e){
			e.printStackTrace();
			stat=0;
		}
		return stat;
	}

}
