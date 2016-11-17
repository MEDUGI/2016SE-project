package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import entity.Professor;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.Cookie;
import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class register_teacher extends ActionSupport implements SessionAware{
    String mail, secret, secret_repeat, school, teacher_id;
    Map session;
    boolean isStudent = false;
    boolean isProfessor = true;

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

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
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
                || school.equals("") || mail.equals("") || teacher_id.equals(""))
            return "NULL";
        if (!secret_repeat.equals(secret)) return "NOT_SAME";

        String regex = "^[A-Za-z0-9]{1,40}@[A-Za-z0-9]{1,40}\\.[A-Za-z]{2,3}$";
        if (!mail.matches(regex)) return "MAIL";

        Professor pro = new Professor(mail, secret);
        pro.setEmailAddress(mail);
        pro.setIdentityCardNo(teacher_id);
        ProfessorDAO prodao = new ProfessorDAO();
        if (prodao.addProfessor(pro)) {
            session.put("userstyle","Professor");
            session.put("username",mail);
            return "SUCCESS";
        }
        return ERROR;
    }
}

