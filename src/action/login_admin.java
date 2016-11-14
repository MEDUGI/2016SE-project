package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;

/**
 * Created by forandroid on 16-11-14.
 */
public class login_admin extends ActionSupport{
    String account,password;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String execute() {
        if (account.equals("admin")) return "ACCOUNT";
        if (password.equals("123456")) return "PASSWORD";
        return "SUCCESS";
    }
}
