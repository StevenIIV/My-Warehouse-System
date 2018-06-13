package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCTool;

public class DBDao {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public DBDao(Connection conn) {//构�?�方法时创建链接
		this.conn=conn;
	}
	public DBDao() {
		this.conn=new JDBCTool().getThis().getConnection();
	}

	// 重写查询数据方法
	public List select(String sql, int columnNum, Object[] paraArray) throws SQLException {
		List list = new ArrayList();
		pst = conn.prepareStatement(sql);
		if (paraArray != null) {//查询参数传入查询语句
			for (int i = 0, length = paraArray.length; i < length; i++)pst.setObject(i + 1, paraArray[i]);
		}
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
			Object[] array = new Object[columnNum];
			for (int i = 0; i < columnNum; i++) array[i] = rs.getObject(i+1);
			list.add(array);
		}
		return list;
	}

		// 重写插入数据方法
	public int insert(String sql, Object[] paraArray) throws SQLException {
		pst = conn.prepareStatement(sql);
		for (int i = 0, length = paraArray.length; i < length; i++) {
			pst.setObject(i + 1, paraArray[i]);
		}
		System.out.println(pst.toString());
		int i = pst.executeUpdate();
		return i;
	}

		// 重写更新数据方法
	public int update(String sql, Object[] paraArray) throws SQLException {
		pst = conn.prepareStatement(sql);
		for (int i = 0, length = paraArray.length; i < length; i++) pst.setObject(i + 1, paraArray[i]);
		int i = pst.executeUpdate();
		return i;
	}

	// 重写删除数据方法
	public int delete(String sql, Object[] paraArray) throws SQLException {
		pst = conn.prepareStatement(sql);
		for (int i = 0, length = paraArray.length; i < length; i++) pst.setObject(i + 1, paraArray[i]);
		int i = pst.executeUpdate();
		
		return i;
	}
	
	public void close()throws SQLException {
		new JDBCTool().getThis().release(rs, pst, conn);	
	}
}
