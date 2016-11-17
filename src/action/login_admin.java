package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.Cookie;
import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class login_admin extends ActionSupport implements SessionAware{
    String mail,password;
    Map session;

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

    public void setSession(Map session) {
        this.session = session;
    }

    @Override
    public String execute() {
        if (mail.equals("admin")) return "MAIL";
        if (password.equals("123456")) return "PASSWORD";
        session.put("userstyle","admin");
        session.put("username",mail);
        return "SUCCESS";
    }
}
