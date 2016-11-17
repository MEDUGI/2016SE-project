package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.jms.Session;
import javax.servlet.http.Cookie;
import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class login_normal extends ActionSupport implements SessionAware{
    String mail,password;
    Map session;

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
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
        StudentDAO studao = new StudentDAO();
        if (!studao.getStudent(mail).equals("")) {
            if (studao.getStudent(mail).getPassword().equals(password)) {
                session.put("userstyle","Student");
                session.put("username",mail);
                return "STUDENT";
            } else return "PASSWORD";
        }


        ProfessorDAO prodao = new ProfessorDAO();
        if (!prodao.getProfessor(mail).equals("")) {
            if (prodao.getProfessor(mail).getPassword().equals(password)) {
                session.put("userstyle","Student");
                session.put("username",mail);
                return "PROFESSOR";
            }
            else return "PASSWORD";
        }
        else return "NULL";
    }
}
