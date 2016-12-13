package action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class login_normal extends ActionSupport implements SessionAware{
    String username,password;
    Map session;
    String kind;

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    @Override
    public String execute() {
        if (getKind().equals("student")) {
            StudentDAO studao = new StudentDAO();
            Student student = studao.getStudent(username);
            if (student != null) {
                if (studao.getStudent(username).getPassword().equals(password)) {
                    session.put("userstyle", "Student");
                    session.put("username", username);
                    return Action.SUCCESS;
                } else {
                    session.put("errorMessage", "not equal!");
                    return ERROR;
                }
            } else {
                session.put("errorMessage", "no student here!");
                return ERROR;
            }
        } else {
            ProfessorDAO prodao = new ProfessorDAO();
            Professor professor = prodao.getProfessor(username);
            if (professor != null) {
                if (prodao.getProfessor(username).getPassword().equals(password)) {
                    session.put("userstyle", "Professor");
                    session.put("username", username);
                    return Action.SUCCESS;
                } else {
                    session.put("errorMessage", "not equal!");
                    return ERROR;
                }
            } else {
                session.put("errorMessage", "no teacher here!");
                return ERROR;
            }
        }
    }
}
