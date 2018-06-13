package com.util;
import java.io.*;
import java.sql.*;
import java.util.*;
//import org.apache.log4j.Logger;//日志�?
/*
 * 
 * 数据库链接工�?
 */
public class JDBCTool {
	
//	private static Logger logger = Logger.getLogger(JDBCTool.class);
	private static JDBCTool jdbcTool;
	private static String url = null;
	private static String username = null;
	private static String password = null;
	private static String driver = null;
	private static Properties props = new Properties();//配置路径
	
	static {//静�?�代码块预加载配置文�?

		try {
			// 读取数据库配置文�?
			props.load(JDBCTool.class.getResourceAsStream("/jdbc.properties"));
		} catch (IOException e) {
			//logger.error("加载jdbc.properties配置文件异常", e);
			e.printStackTrace();
		}

		url = (props.getProperty("jdbc.url"));
		username = (props.getProperty("jdbc.username"));
		password = (props.getProperty("jdbc.password"));
		driver = (props.getProperty("jdbc.driver"));

		// 加载数据库驱�?
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
//			logger.error("加载数据库驱动异�?", e);
			e.printStackTrace();
		}

	}
	
	
	// 单例模式
	//全局只能创建�?个实�? 防止资源浪费多次链接？？？？
	public JDBCTool getThis() {
		if (jdbcTool == null) {
			synchronized (JDBCTool.class) {
				/*2. synchronized �? ：�?�过 synchronized关键字来声明synchronized 块�?�语法如下：
				 * synchronized (syncObject) { 
    				// 允许访问控制的代�? 
					}
   				   synchronized 块是这样�?个代码块，其中的代码必须获得对象 syncObject（如前所述，可以是类实例或类�?
   				   的锁方能执行，具体机制同前所述�?�由于可以针对任意代码块，且可任意指定上锁的对象，故灵活性较�?
               */	
			//算了，先当作单例模式中的必要代码
				if (jdbcTool == null) {
					jdbcTool = new JDBCTool();
				}
			}
		}
		return jdbcTool;
	}
	
	public Connection getConnection() {
		Connection conn = null;
		// 创建数据库连�?
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
//			logger.error("创建数据库连接发生异�?", e);
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 释放数据库资�?
	 */
	public void release(Object o)throws SQLException {
		if (o == null)return;
		if (o instanceof ResultSet) ((ResultSet) o).close();
		else if (o instanceof PreparedStatement) ((PreparedStatement) o).close();
		else if (o instanceof Connection) {
			Connection c = (Connection) o;
			if (!c.isClosed()) c.close();
		}
	}

	// 释放数据库资源方法重�?
	public void release(ResultSet rs, PreparedStatement pst, Connection conn)throws SQLException{
		release(rs);
		release(pst);
		release(conn);
	}

}
