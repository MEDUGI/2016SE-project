package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.StudentDAO;
import entity.Student;

/**
 * Created by Xiangxi on 2016/11/15.
 */
public class showGradSchoolAction extends ActionSupport{
    String username;
    String graduateSchool;
    Student student;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getGraduateSchool() {
        return graduateSchool;
    }

    public void setGraduateSchool(String graduateSchool) {
        this.graduateSchool = graduateSchool;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String execute() {
        StudentDAO studentDAO = new StudentDAO();
        student = studentDAO.getStudent(username);
        if (student.getGraduateSchool().equals(graduateSchool) || graduateSchool == null || graduateSchool.equals("")) {
            graduateSchool=student.getGraduateSchool();
            return "success";
        } else {
            student.setGraduateSchool(graduateSchool);
            studentDAO.updateStudent(student);
            return "success";
        }
    }
}
