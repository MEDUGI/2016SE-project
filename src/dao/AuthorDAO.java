package dao;

/**
 * Created by 李沅泽 on 2016/10/9.
 */
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.DbPool;

public class AuthorDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;

    public Author findAuthor(String AuthorID){
        String sql = "select * from author where AuthorID = ?";
        Author author = new Author();
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, AuthorID);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                author.setAuthorId(rs.getString(1));
                author.setName(rs.getString(2));
                author.setAge(rs.getString(3));
                author.setCountry(rs.getString(4));
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return author;
    }

    public String findAuthorName(String AuthorName){
        String sql = "select * from author where Name = ?";
        String result = "";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, AuthorName);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                result = rs.getString(1);
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return result;
    }
    public int addAuthorByName(String authorName) {
        int i = 0;
        String sql = "insert into book(Name) value(?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,authorName);
            i = ps.executeUpdate();
            ps.close();
        }catch(Exception e){e.printStackTrace();}
        return i;
    }

    public int addAuthor(String Name,String Age,String Country) {
        int i = 0;
        String sql = "insert into author value(null,?,?,?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,Name);
            ps.setString(2,Age);
            ps.setString(3,Country);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

}
