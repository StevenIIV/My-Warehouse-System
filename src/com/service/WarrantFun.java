package com.service;

import com.dao.DBDao;
import com.util.JDBCTool;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class WarrantFun {

    //显示所有入库
    public List selectEntryWarrant() throws SQLException {
        DBDao db=new DBDao();
        List list=db.select("SELECT * FROM tb_entry_warrant",18,new Object[]{});
        if(!list.isEmpty()){
            return list;
        }
        return null;
    }
    //显示所有出库
    public List selectExitWarrant() throws SQLException {
        DBDao db=new DBDao();
        List list=db.select("SELECT * FROM tb_exit_warrant",18,new Object[]{});
        if(!list.isEmpty()){
            return list;
        }
        return null;
    }
    //显示所有总仓
    public List selectGeneralWarehouse() throws SQLException {
        DBDao db=new DBDao();
        List list=db.select("SELECT * FROM tb_general_warehouse",5,new Object[]{});
        if(!list.isEmpty()){
            return list;
        }
        return null;
    }
    //显示所有本仓
    public List selectDistributeWarehouse() throws SQLException {
        DBDao db=new DBDao();
        List list=db.select("SELECT * FROM tb_distribute_warehouse",5,new Object[]{});
        if(!list.isEmpty()){
            return list;
        }
        return null;
    }
    //显示所有领料
    public List selectPickWarrant() throws SQLException {
        DBDao db=new DBDao();
        List list=db.select("SELECT * FROM tb_pick_warrant",20,new Object[]{});
        if(!list.isEmpty()){
            return list;
        }
        return null;
    }
    //显示所有退料
    public List selectReturnWarrant() throws SQLException {
        DBDao db=new DBDao();
        List list=db.select("SELECT * FROM tb_return_warrant",20,new Object[]{});
        if(!list.isEmpty()){
            return list;
        }
        return null;
    }
    //返回总仓按顺序
    public ResultSet selectGeneralWarehouseInOrder() throws SQLException {
        Connection conn=new JDBCTool().getThis().getConnection();
        ResultSet rs=conn.createStatement().executeQuery("SELECT * FROM tb_general_warehouse order by article_number");
        return rs;
    }
}
