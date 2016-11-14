package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.DbPool;
/**
 * Created by 李沅泽 on 2016/11/14.
 */
public class RelationDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;
    public int deleteRelation(String relationID) {
        int i = 0;
        String sql = "delete from relation when id=?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, relationID);
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

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
}
