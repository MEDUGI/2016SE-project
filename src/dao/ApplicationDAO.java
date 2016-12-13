package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.sun.javaws.security.AppPolicy;
import entity.Application;
import java.util.ArrayList;

import org.DbPool;
/**
 * Created by 李沅泽 on 2016/11/14.
 */
public class ApplicationDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;

    public ApplicationDAO() {

    }

    public int addAppliciation(Application app) {
        int i = 0;
        String sql = "Insert into application (userFrom, userTo, isFromStudent, applyDate, status, message)  " +
                "value(?,?,?,?,?,?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,app.getFrom());
            ps.setString(2,app.getTo());
            ps.setBoolean(3,app.getIsFromStudent());
            ps.setString(4,app.getApplydate());
            ps.setInt(5,app.getStatus());
            ps.setString(6,app.getMessage());
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public Application getApplicationById(int id) {
        String sql = "select * from application WHERE id=?";
        Application result = null;
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                Application Temp = new Application();
                Temp.setID(rs.getInt("id"));
                Temp.setFrom(rs.getString("userFrom"));
                Temp.setTo(rs.getString("userTo"));
                Temp.setIsFromStudent((rs.getBoolean("isFromStudent")));
                Temp.setApplydate(rs.getString("applyDate"));
                Temp.setStatus(rs.getInt("status"));
                Temp.setMessage(rs.getString("message"));
                result = Temp;
            }
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /*        这个函数用于根据用户的ID来找到对应的一个Application的列表。
       返回值为ArrayList.
       后续可以考虑将ArrayList泛化为实现了iterable接口的对象.
     */
    public ArrayList<Application> findAllApplicationByUser(String username) {
        String sql = "";
        sql = "select * from application WHERE userFrom=? OR userTo=?";
        ArrayList<Application> result = new ArrayList<Application>();
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, username);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Application Temp = new Application();
                Temp.setID(rs.getInt("id"));
                Temp.setFrom(rs.getString("userFrom"));
                Temp.setTo(rs.getString("userTo"));
                Temp.setIsFromStudent((rs.getBoolean("isFromStudent")));
                Temp.setApplydate(rs.getString("applyDate"));
                Temp.setStatus(rs.getInt("status"));
                Temp.setMessage(rs.getString("message"));
                result.add(Temp);
            }
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public int updateStatus(int appid,int newstatus) {
        int i = 0;
        String sql = "update application set status=? where id=?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setInt(1,newstatus);
            ps.setInt(2,appid);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public int deleteStatus(int appid) {
        int i = 0;
        String sql = "delete from application WHERE id=?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setInt(1, appid);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
