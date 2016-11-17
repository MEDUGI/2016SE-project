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
public class ProfessorDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;
    public boolean addProfessor(Professor professor) {
        String sql;
        try{
            sql = "insert into professorDB value (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, professor.getUsername());
            ps.setString(2, professor.getPassword());
            ps.setString(3, professor.getEmployerUnit());
            ps.setString(4, professor.getIdentityCardNo());
            ps.setString(5, professor.getWorkingArea());
            ps.setString(6, professor.getPapersPublished());
            ps.setInt(7, professor.getAccomodationNumber());
            ps.setString(8, professor.getEmailAddress());
            ps.setString(9, professor.getMobileNo());
            ps.setInt(10, professor.getAcceptedNumber());
            ps.setString(11, professor.getFullname());
            ps.executeUpdate();
            ps.close();
        }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public Professor getProfessor(String username) {
        String sql = "select * from professorDB where username = ?";
       Professor professor = new Professor(username, "");
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                professor.setPassword(rs.getString(2));
                professor.setEmployerUnit(rs.getString(3));
                professor.setIdentityCardNo(rs.getString(4));
                professor.setWorkingArea(rs.getString(5));
                professor.setPapersPublished(rs.getString(6));
                professor.setAccomodationNumber(rs.getInt(7));
                professor.setEmailAddress(rs.getString(8));
                professor.setMobileNo(rs.getString(9));
                professor.setAcceptedNumber(rs.getInt(10));
                professor.setFullname(rs.getString(11));
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return professor;
    }
    public boolean updatePassword(String username, String password) {
        String sql = "select * from professorDB where username = ?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(!rs.next()){
                return false;
            }
            sql = "UPDATE professorDB SET password = " + password + " WHERE username = " + username;
            ps = dbp.getConn().prepareStatement(sql);
            ps.executeUpdate();
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
    public boolean updateProfessor(Professor professor) {
        String sql = "select * from professorDB where username = ?";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, professor.getUsername());
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                professor.setPassword(rs.getString(2));
                professor.setAcceptedNumber(rs.getInt(10));
            }
            ps.close();

            sql = "delete from professorDB where username = ?";
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, professor.getUsername());
            ps.executeUpdate();
            ps.close();

            sql = "insert into professordb values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, professor.getUsername());
            ps.setString(2, professor.getPassword());
            ps.setString(3, professor.getEmployerUnit());
            ps.setString(4, professor.getIdentityCardNo());
            ps.setString(5, professor.getWorkingArea());
            ps.setString(6, professor.getPapersPublished());
            ps.setInt(7, professor.getAccomodationNumber());
            ps.setString(8, professor.getEmailAddress());
            ps.setString(9, professor.getMobileNo());
            ps.setInt(10, professor.getAcceptedNumber());
            ps.setString(11, professor.getFullname());
            ps.executeUpdate();
            ps.close();
            return true;
        }catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public ArrayList<Professor> getAllProfessors() {
        return null;
    }
    public ArrayList<Professor> getProfessorRecomentation(Student student) {
        return null;
    }
}
