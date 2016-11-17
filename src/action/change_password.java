package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class change_password extends ActionSupport implements SessionAware{

    String mail,secret,secret_repeat;
    Map session;

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getSecret() {
        return secret;
    }

    public void setSecret(String secret) {
        this.secret = secret;
    }

    public String getSecret_repeat() {
        return secret_repeat;
    }

    public void setSecret_repeat(String secret_repeat) {
        this.secret_repeat = secret_repeat;
    }


    @Override
    public String execute() {
        if (secret.equals("") || secret_repeat.equals("")
                || mail.equals("")) {
            session.put("errorMessage", "输入项目不能为空!");
            return ERROR;
        }
        if (!secret_repeat.equals(secret)) {
            session.put("errorMessage", "两次密码不一致!");
            return ERROR;
        }
        String regex = "^[A-Za-z]{1,40}@[A-Za-z0-9]{1,40}\\.[A-Za-z]{2,3}$";
        if (!mail.matches(regex)) {
            session.put("errorMessage", "邮箱不符合格式!");
            return ERROR;
        }

        StudentDAO studao = new StudentDAO();
        ProfessorDAO prodao = new ProfessorDAO();
        if (!studao.getStudent(mail).equals("")) {
            studao.updatePassword(mail,secret);
        }

        else if (!prodao.getProfessor(mail).equals("")) {
            prodao.updatePassword(mail,secret);
        }

        else  {
            session.put("errorMessage", "用户名有误!");
            return ERROR;
        }
        return "SUCCESS";
    }
}
