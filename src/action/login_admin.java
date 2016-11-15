package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.Cookie;

/**
 * Created by forandroid on 16-11-14.
 */
public class login_admin extends ActionSupport{
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
        if (mail.equals("admin")) return "MAIL";
        if (password.equals("123456")) return "PASSWORD";
        addCookie("userstyle","admin");
        addCookie("username",mail);
        return "SUCCESS";
    }
}
