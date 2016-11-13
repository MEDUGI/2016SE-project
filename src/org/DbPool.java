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
            String url="jdbc:mysql://localhost/selab2";
            String user = "modugi";
            String password = "modugi123456";
            Driver driver = new Driver();
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("数据库连接成功！");
        }catch(Exception e){
            System.out.println("数据库连接失败！");
            e.printStackTrace();
        }
    }
    public  Connection getConn(){
        if(conn == null){
            createConn();
        }
        return conn;
    }
    public ResultSet executeQuery(String sql) {
        ResultSet rs = null;
        if (conn == null) {
            createConn();
        }
        try {
            Statement st = this.conn.createStatement();
            rs = st.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }
}
