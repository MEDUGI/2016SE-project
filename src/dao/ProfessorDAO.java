package dao;

import entity.Professor;
import entity.Student;
import org.DbPool;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class ProfessorDAO {
    DbPool dbp = new DbPool();
    PreparedStatement ps = null;
    public boolean addProfessor(Professor professor) {

        String sql = "insert into professorDB(Name) value(?, ?, ?, ?, ?, ?, ?)";
        try{
            ps = dbp.getConn().prepareStatement(sql);
            ps.setString(1, professor.getUsername());
            ps.setString(2, professor.getPassword());
            ps.setString(3, professor.getEmployerUnit());
            ps.setString(4, professor.getIdentityCardNo());
            ps.setString(5, professor.getWorkingArea());
            ps.setString(6, professor.getPapersPublished());
            ps.setInt(7, professor.getAccomodationNumber());
            ps.executeUpdate();
            ps.close();
        }catch(Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public Professor getProfessor(String username) {
        String sql = "select * from author where username = ?";
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
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return professor;
    }
}
