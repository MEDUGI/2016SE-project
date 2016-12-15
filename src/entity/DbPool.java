package entity;

import java.sql.*;

import com.mysql.jdbc.Driver;

public class DbPool {
    private  Connection conn;
    public void createConn(){
        try{
            String url="jdbc:mysql://localhost/modugi";
            String user = "modugi";//"0mxk3llw4x";
            String password = "modugi";
/*
            String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_modugi";
            String user = "0mxk3llw4x";
            String password = "l2hj4lw3jkyiwyly223511hh33121zimhlzk5iw4";
*/
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
