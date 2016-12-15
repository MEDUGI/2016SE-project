package org;

import java.sql.*;

import com.mysql.jdbc.Driver;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DbPool {
    private  Connection conn;
    public void createConn(){
        try{
            String url="jdbc:mysql://localhost/modugi";
            //String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_modugi";
            String user = "modugi";//"0mxk3llw4x";     // modugi
            String password = "modugi";//"l2hj4lw3jkyiwyly223511hh33121zimhlzk5iw4";   // modugi
            Driver driver = new Driver();
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("The database is successfully connected!");
        }catch(Exception e){
            System.err.println("Failed to connect the database!");
            //e.printStackTrace();
        }
    }
    public  Connection getConn(){
        if(conn == null){
            createConn();
        }
        return conn;
    }
}
