package dao;

import entity.Professor;
import entity.Student;
import org.DbPool;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class StudentDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;
    static private String toValueString(Student student) {
        String result="";
        result += student.getUsername();
        result += ",";
        result += student.getPassword();
        result += ",";
        result += student.getGraduateSchool();
        result += ",";
        result += student.getStudentNo();
        result += ",";
        result += student.getGpa();
        result += ",";
        result += student.getNeepScore();
        result += ",";
        result += student.getAwardsCollection();
        result += ",";
        result += student.getEmailAddress();
        result += ",";
        result += student .getWorkingAreas();
        result += ",";
        result += student.getMobileNo();
        result += ",";
        result += student.getFullname();
        result += ",";
        result += student.getMajor();
        result += ",";
        result += student.getIntroduction();
        result += ",";
        result += student.getPhysicalAddress();
        return result;
    }
    static private Student toStudent(ResultSet rs) {
        try {
            Student student = new Student(rs.getString(1),rs.getString(2));
            student.setGraduateSchool(rs.getString(3));
            student.setStudentNo(rs.getString(4));
            student.setGpa(rs.getDouble(5));
            student.setNeepScore(rs.getDouble(6));
            student.setAwardsCollection(rs.getString(7));
            student.setEmailAddress(rs.getString(8));
            student.setWorkingAreas(rs.getString(9));
            student.setMobileNo(rs.getString(10));
            student.setFullname(rs.getString(11));
            student.setMajor(rs.getString(12));
            student.setIntroduction(rs.getString(13));
            student.setPhysicalAddress(rs.getString(14));
            return student;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public boolean addStudent(Student student) {

        String sql = "insert into studentDB values(" + toValueString(student) + ")";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.executeUpdate();
            ps.close();
        }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public Student getStudent(String username) {
        String sql = "select * from studentDB where username = ?";
        Student student = new Student(username, "");
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                student = toStudent(rs);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return student;
    }
    public boolean updatePassword(String username, String password) {
        String sql = "select * from studentDB where username = ?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(!rs.next()){
                return false;
            }
            sql = "UPDATE studentDB SET password = " + password + " WHERE username = " + username;
            ps = dbp.getConn().prepareStatement(sql);
            ps.executeUpdate();
            ps.close();
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public boolean updateStudent(Student student) {
        String sql = "select * from studentDB where username = ?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, student.getUsername());
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                student.setPassword(rs.getString(2));
            }
            ps.close();

            sql = "delete from studentDB where username = ?";
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, student.getUsername());
            ps.executeUpdate();
            ps.close();

            sql = "insert into studentDB values ("+toValueString(student)+")";
            ps = dbp.getConn().prepareStatement(sql);
            ps.executeUpdate();
            ps.close();
            return true;
        }catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public ArrayList<Student> getAllStudents() {
        String sql = "select * from studentDB";
        try {
            ps = dbp.getConn().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Student> resultList = new ArrayList<>();
            while(rs.next()) {
                resultList.add(toStudent(rs));
            }
            return resultList;
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public ArrayList<Student> getStudentRecomentation(Professor professor) {
        return null;
    }
}
