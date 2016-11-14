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
            ps.setString(4,status);
            ps.setString(5,message);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    // mode = 1, id belongs to student. mode = 0, id belongs to tutor.
    public ArrayList<Application> findAllApplicationByStudent(String ID, int mode) {
        int i = 0;
        String sql = "";
        if (mode == 0) {
            sql = "select * from application when professorID=?";
        }
        else {
            sql = "select * from application when studentID=?";
        }
        ArrayList<Application> result = new ArrayList<Application>();
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, ID);
            i = ps.executeUpdate();
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Application Temp = new Application();
                Temp.setStu(rs.getString("student"));
                Temp.setPro(rs.getString("professor"));
                Temp.setApplydate(rs.getString("date"));
                Temp.setStatus(Integer.parseInt(rs.getString("status")));
                Temp.setMessage(rs.getString("message"));
                result.add(Temp);
            }
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
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

    public int deleteStatus(String appid) {
        int i = 0;
        String sql = "delete from application when id=?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, appid);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
