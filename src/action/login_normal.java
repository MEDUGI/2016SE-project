package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.Cookie;

/**
 * Created by forandroid on 16-11-14.
 */
public class login_normal extends ActionSupport{
    String mail,password;

    public String getmail() {
        return mail;
    }

    public void setmail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private void addCookie(String name,String value){
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(60*60*24*365);
        ServletActionContext.getResponse().addCookie(cookie);
    }

    @Override
    public String execute() {


        StudentDAO studao = new StudentDAO();
        if (!studao.getStudent(mail).equals("")) {
            if (studao.getStudent(mail).equals(password)) {
                addCookie("userstyle","Student");
                addCookie("username",mail);
                return "STUDENT";
            } else return "PASSWORD";
        }


        ProfessorDAO prodao = new ProfessorDAO();
        if (!prodao.getProfessor(mail).equals("")) {
            if (prodao.getProfessor(mail).equals(password)) {
                addCookie("userstyle","Professor");
                addCookie("username",mail);
                return "PROFESSOR";
            }
            else return "PASSWORD";
        }
        else return "NULL";
    }
}
