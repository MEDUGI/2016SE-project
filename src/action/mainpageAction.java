package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class mainpageAction extends ActionSupport implements SessionAware{
    boolean isStudent;
    boolean isProfessor;
    String username;
    String userstyle;
    Student student;
    Professor professor;
    Map session;

    public String getUserstyle() {
        return userstyle;
    }

    public void setUserstyle(String userstyle) {
        this.userstyle = userstyle;
    }

    public boolean isStudent() {
        return isStudent;
    }

    public void setIsStudent(boolean isStudent) {
        this.isStudent = isStudent;
    }

    public boolean isProfessor() {
        return isProfessor;
    }

    public void setIsProfessor(boolean isProfessor) {
        this.isProfessor = isProfessor;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Professor getProfessor() {
        return professor;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }
    public String execute() {
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        if (userstyle.equals("Student"))
            isStudent=true;
        if (userstyle.equals("Professor"))
            isProfessor=true;
        if (isStudent) {
            StudentDAO studentDAO = new StudentDAO();
            student = studentDAO.getStudent(username);
            return SUCCESS;
        }
        if (isProfessor) {
            ProfessorDAO professorDAO = new ProfessorDAO();
            professor = professorDAO.getProfessor(username);
            return SUCCESS;
        }
        return ERROR;
    }
    public void setSession(Map session) {
        this.session = session;
    }
}
