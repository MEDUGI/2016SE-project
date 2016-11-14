package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;

/**
 * Created by forandroid on 16-11-14.
 */
public class login_normal extends ActionSupport{
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
        StudentDAO studao = new StudentDAO();
        if (!studao.getStudent(account).equals("")) {
            if (studao.getStudent(account).equals(password)) return "STUDENT";
            else return "PASSWORD";
        }

        ProfessorDAO prodao = new ProfessorDAO();
        if (!prodao.getProfessor(account).equals("")) {
            if (prodao.getProfessor(account).equals(password)) return "PROFESSOR";
            else return "PASSWORD";
        }
        else return "ACCOUNT";
    }
}
