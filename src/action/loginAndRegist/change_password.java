package action.loginAndRegist;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class change_password extends ActionSupport implements SessionAware{

    String username,secret,secret_repeat;
    Map session;

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
                || username.equals("")) {
            session.put("errorMessage", "输入项目不能为空!");
            return ERROR;
        }
        if (!secret_repeat.equals(secret)) {
            session.put("errorMessage", "两次密码不一致!");
            return ERROR;
        }
        StudentDAO studao = new StudentDAO();
        ProfessorDAO prodao = new ProfessorDAO();
        if (studao.getStudent(username) != null) {
            studao.updatePassword(username,secret);
            session.put("userstyle", "Student");
        }
        else if (prodao.getProfessor(username) != null) {
            prodao.updatePassword(username,secret);
            session.put("userstyle", "Professor");
        }
        else  {
            session.put("errorMessage", "用户名有误!");
            return ERROR;
        }
        session.put("username", username);
        return "SUCCESS";
    }
}
