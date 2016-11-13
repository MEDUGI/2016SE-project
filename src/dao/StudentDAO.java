package dao;

import entity.Professor;
import entity.Student;
import org.DbPool;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class StudentDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;
    public boolean addStudent(Student student) {

        String sql = "insert into studentDB(Name) value(?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, student.getUsername());
            ps.setString(2, student.getPassword());
            ps.setString(3, student.getGraduateSchool());
            ps.setString(4, student.getStudentNo());
            ps.setDouble(5, student.getGpa());
            ps.setDouble(6, student.getNeepScore());
            ps.setString(7, student.getAwardsCollection());
            ps.setString(8, student.getEmailAddress());
            ps.setString(9, student.getWorkingAreas());
            ps.setString(10, student.getMobileNo());
            ps.executeUpdate();
            ps.close();
        }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public Student getStudent(String username) {
        String sql = "select * from author where username = ?";
        Student student = new Student(username, "");
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                student.setPassword(rs.getString(2));
                student.setGraduateSchool(rs.getString(3));
                student.setStudentNo(rs.getString(4));
                student.setGpa(rs.getDouble(5));
                student.setNeepScore(rs.getDouble(6));
                student.setAwardsCollection(rs.getString(7));
                student.setEmailAddress(rs.getString(8));
                student.setWorkingAreas(rs.getString(9));
                student.setMobileNo(rs.getString(10));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return student;
    }
}
