package com.Dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public interface BaseDao {
    public static DataSource getDataSource(){
        DataSource dataSource=null;
        try {
            Context context=new InitialContext();
            dataSource=(DataSource)context.lookup("java:comp/env/jdbc/myJavaEEDB");
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
        return  dataSource;
    }
    public default Connection getConnection(){
        DataSource dataSource=getDataSource();
        Connection connection=null;
        try {
            connection=dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }
}
