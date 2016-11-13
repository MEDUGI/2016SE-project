package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.Application;
import java.util.ArrayList;

import org.DbPool;
/**
 * Created by 李沅泽 on 2016/11/14.
 */
public class ApplicationDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;
    public int addApplication(String stuID,String proID,String date,String status,String message) {
        int i = 0;
        String sql = "insert into application value(?,?,?,?,?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,stuID);
            ps.setString(2,proID);
            ps.setString(3,date);
            ps.setString(4,date);
            ps.setString(5,status);
            ps.setString(6,message);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public ArrayList<Application> findAllApplicationByStudent(String stuid) {
        int i = 0;
        String sql = "select * from application when studentid=?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,stuid);
            i = ps.executeUpdate();
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {

            }
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public int updateStatus(String appid,String newstatus) {
        int i = 0;
        String sql = "update application set status=? where id=?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,newstatus);
            ps.setString(2,appid);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
