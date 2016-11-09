package org;
import java.rmi.Naming;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.naming.NamingException;

/**
 * Created by Love_sakura on 2016/9/16.
 */
public class DatabaseConn {
    private static Connection conn;
    public static Connection getConnection() throws SQLException,NamingException{
        try {
            String url = "jdbc:mysql://w.rdc.sae.sina.com.cn:3307/app_lab2forlyz";
            String username="kokl1l0yy2";
            String password="4kj2m0h2151033mml1l31i0m4jzkkli5hm4whkil";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn=DriverManager.getConnection(url, username, password);
            System.out.println("数据库连接成功");
        }catch (Exception e){
            System.out.println("数据库连接失败");
            e.printStackTrace();
        }
        return conn;
    }
}




























