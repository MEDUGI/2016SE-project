package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.Application;
import java.util.ArrayList;
import entity.Application;

import org.DbPool;
/**
 * Created by 李沅泽 on 2016/11/14.
 */
public class ApplicationDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;
    public int addAppliciation(Application app) {
        int i = 0;
        String sql = "insert into application value(?,?,?,?,?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1,app.getStu());
            ps.setString(2,app.getPro());
            ps.setString(3,app.getApplydate());
            ps.setString(4,app.getStatus()+"");
            ps.setString(5,app.getMessage());
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
    /* mode为1，表示调用者为学生，反之为教授。
       这个函数用于根据用户的ID来找到对应的一个Application的列表。
       返回值为ArrayList.
       后续可以考虑将ArrayList泛化为实现了iterable接口的对象.
     */
    public ArrayList<Application> findAllApplicationByUser(String ID, int mode) {
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
                Temp.setID(Integer.parseInt(rs.getString("id")));
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
