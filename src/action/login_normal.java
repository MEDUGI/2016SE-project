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


        StudentDAO studao = new StudentDAO();
        if (!studao.getStudent(mail).equals("")) {
            if (studao.getStudent(mail).equals(password)) return "STUDENT";
            else return "PASSWORD";
        }

        ProfessorDAO prodao = new ProfessorDAO();
        if (!prodao.getProfessor(mail).equals("")) {
            if (prodao.getProfessor(mail).equals(password)) return "PROFESSOR";
            else return "PASSWORD";
        }
        else return "MAIL";
    }
}
