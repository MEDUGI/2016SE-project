package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;

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

    @Override
    public String execute() {
        if (mail.equals("admin")) return "MAIL";
        if (password.equals("123456")) return "PASSWORD";
        return "SUCCESS";
    }
}
