package com.Dao;

import com.Model.User;

import java.sql.SQLException;

public interface UserDao extends BaseDao{
    boolean checkUser(User user) throws SQLException;
    boolean regUser(User user);
}
