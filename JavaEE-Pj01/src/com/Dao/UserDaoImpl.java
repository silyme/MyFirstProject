package com.Dao;

import com.Model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao{
    public boolean checkUser(User user) throws SQLException {
        String sql="SELECT username,password FROM usertable WHERE username=? AND password=?";
        try(Connection conn=getConnection()){
            PreparedStatement pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,user.getUsername());
            pstmt.setString(2,user.getPassword());
            ResultSet result=pstmt.executeQuery();
            if(result.next()){
                return true;
            }
        }
        return false;
    }
    public boolean regUser(User user){
        String sql="INSERT INTO usertable VALUES(?,?,?)";
        try(Connection conn=getConnection()){
            PreparedStatement pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,user.getUsername());
            pstmt.setString(2,user.getPassword());
            pstmt.setInt(3,user.getType());
            pstmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
