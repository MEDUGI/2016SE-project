package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;

/**
 * Created by Xiangxi on 2016/11/14.
 */
public class mainpageAction extends ActionSupport{
    boolean isStudent;
    boolean isProfessor;
    String username;
    Student student;
    Professor professor;

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
}
