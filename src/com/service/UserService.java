package com.service;

import com.dao.DBDao;

import java.sql.SQLException;
import java.util.List;

public class UserService {
    DBDao db;
    public UserService() {
        db=new DBDao();
    }
    public boolean checkUser(String username,String password) throws SQLException {
        List rs=db.select("SELECT * FROM user WHERE username=? and password=?",4,new Object[]{username,password});
        if(rs.isEmpty()) return false;
        else return true;
    }
}
