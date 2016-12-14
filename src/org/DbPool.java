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
            //String url="jdbc:mysql://localhost/modugi";
            String url = "jdbc:mysql://ucvidyngudel.mysql.sae.sina.com.cn:10484/modugi";
            String user = "0mxk3llw4x";     // modugi
            String password = "l2hj4lw3jkyiwyly223511hh33121zimhlzk5iw4";   // modugi
            Driver driver = new Driver();
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("The database is successfully connected!");
        }catch(Exception e){
            System.out.println("Failed to connect the database!");
            e.printStackTrace();
        }
    }
    public  Connection getConn(){
        if(conn == null){
            createConn();
        }
        return conn;
    }
}
