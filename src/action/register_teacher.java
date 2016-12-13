package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import entity.Professor;
import entity.Tools;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class register_teacher extends ActionSupport implements SessionAware{
    String username, secret, secret_repeat, employerUnit, teacher_id, fullname;
    Map session;
    boolean isStudent = false;
    boolean isProfessor = true;

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Map getSession() {
        return session;
    }

    public boolean isStudent() {
        return isStudent;
    }

    public void setIsStudent(boolean isStudent) {
        this.isStudent = isStudent;
    }

    public boolean isProfessor() {
        return isProfessor;
    }

    public void setIsProfessor(boolean isProfessor) {
        this.isProfessor = isProfessor;
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

    public String getEmployerUnit() {
        return employerUnit;
    }

    public void setEmployerUnit(String employerUnit) {
        this.employerUnit = employerUnit;
    }

    public String getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(String teacher_id) {
        this.teacher_id = teacher_id;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    @Override
    public String execute() {
        if (secret.equals("") || secret_repeat.equals("")
                || employerUnit.equals("") || username.equals("") || teacher_id.equals("")) {
            session.put("errorMessage", "输入项目不能为空!");
            return ERROR;
        }
        if (!secret_repeat.equals(secret)) {
            session.put("errorMessage", "两次密码不一致!");
            return ERROR;
        }

        if (Tools.usernameExisted(username)) {
            session.put("errorMessage", "用户名已经存在");
            return ERROR;
        }

        Professor pro = new Professor(username, secret);
        pro.setIdentityCardNo(teacher_id);
        pro.setFullname(fullname);
        pro.setEmployerUnit(employerUnit);
        ProfessorDAO prodao = new ProfessorDAO();
        if (prodao.addProfessor(pro)) {
            session.put("userstyle","Professor");
            session.put("username", username);
            return "SUCCESS";
        }
        session.put("errorMessage", "未知的错误发生了，你行走在互联网的荒野");
        return ERROR;
    }
}

