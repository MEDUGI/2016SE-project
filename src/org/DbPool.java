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
            String user = "modugi";git 
            String password = "modugi";
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
