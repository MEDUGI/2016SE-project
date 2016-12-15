package dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.Relation;
import java.util.ArrayList;

import entity.DbPool;
/**
 * Created by 李沅泽 on 2016/11/14.
 */
public class RelationDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;

    public RelationDAO() {

    }

    public int deleteRelation(String relationID) {
        int i = 0;
        String sql = "delete from relation when id=?relation where id=?";
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
    /*
        mode=1时，代表调用者为学生。反之为教授。
        这个函数根据用户的ID来查询得到相关的Relation，并且返回一个列表。
        即允许用户和Relation之间存在多对多的关系。
     */
    public ArrayList<Relation> findAllRelationByUser(String ID, int mode) {
        int i = 0;
        String sql = "";
        if (mode == 0) {
            sql = "select * from application when professorID=?";
        }
        else {
            sql = "select * from application when studentID=?";
        }
        ArrayList<Relation> result = new ArrayList<Relation>();
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, ID);
            i = ps.executeUpdate();
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Relation Temp = new Relation();
                Temp.setID(Integer.parseInt(rs.getString("id")));
                Temp.setStu(rs.getString("student"));
                Temp.setPro(rs.getString("professor"));
                Temp.setDate(rs.getString("date"));
                Temp.setStudentmessage(rs.getString("studentMessage"));
                Temp.setTutormessage(rs.getString("tutorMessage"));
                result.add(Temp);
            }
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public int addRelation(Relation relation) {
        int i = 0;
        String sql = "insert into relation value(?,?,?,?,?,?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, relation.getStu());
            ps.setString(2, relation.getPro());
            ps.setString(3, relation.getDate());
            ps.setString(4, relation.getApply()+"");
            ps.setString(5, relation.getStudentmessage());
            ps.setString(6, relation.getTutormessage());
            i = ps.executeUpdate();
            ps.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }
}
