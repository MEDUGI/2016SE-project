package dao;

import entity.Professor;
import entity.Student;
import org.DbPool;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
            sql = "insert into professorDB value (" + toValueString(professor) + ");";
            Statement st = dbp.getConn().createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    static private String toValueString(Professor professor) {
        String result="'";
        result += professor.getUsername();
        result += "','";
        result += professor.getPassword();
        result += "','";
        result += professor.getEmployerUnit();
        result += "','";
        result += professor.getIdentityCardNo();
        result += "','";
        result += professor.getWorkingArea();
        result += "','";
        result += professor.getPapersPublished();
        result += "','";
        result += professor.getAccomodationNumber();
        result += "','";
        result += professor.getEmailAddress();
        result += "','";
        result += professor.getMobileNo();
        result += "','";
        result += professor.getAcceptedNumber();
        result += "','";
        result += professor.getFullname();
        result += "','";
        result += professor.getMajor();
        result += "','";
        result += professor.getIntroduction();
        result += "','";
        result += professor.getPhysicalAddress();
        result += "'";
        return result;
    }
    static private Professor toProfessor(ResultSet rs) {
        try {
            Professor professor = new Professor(rs.getString(1),rs.getString(2));
            professor.setEmployerUnit(rs.getString(3));
            professor.setIdentityCardNo(rs.getString(4));
            professor.setWorkingArea(rs.getString(5));
            professor.setPapersPublished(rs.getString(6));
            professor.setAccomodationNumber(rs.getInt(7));
            professor.setEmailAddress(rs.getString(8));
            professor.setMobileNo(rs.getString(9));
            professor.setAcceptedNumber(rs.getInt(10));
            professor.setFullname(rs.getString(11));
            professor.setMajor(rs.getString(12));
            professor.setIntroduction(rs.getString(13));
            professor.setPhysicalAddress(rs.getString(14));
            return professor;
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public Professor getProfessor(String username) {
        String sql = "select * from professorDB where username = ?";
       Professor professor = new Professor(username, "");
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return toProfessor(rs);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
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
            Statement st = dbp.getConn().createStatement();
            st.execute(sql);
            st.close();
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

            sql = "insert into professordb values (" + toValueString(professor) + ")";
            Statement st = dbp.getConn().createStatement();
            st.execute(sql);
            st.close();
            return true;
        }catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    public ArrayList<Professor> getAllProfessors() {
        String sql = "select * from professorDB";
        try {
            Statement st = dbp.getConn().createStatement();
            ResultSet rs = st.executeQuery(sql);
            ArrayList<Professor> resultList = new ArrayList<>();
            while(rs.next()) {
                resultList.add(toProfessor(rs));
            }
            return resultList;
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public ArrayList<Professor> getProfessorRecomentation(Student student) {
        return null;
    }
}
