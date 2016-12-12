package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.Student;
import dao.StudentDAO;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.Cookie;
import java.util.Map;

/**
 * Created by forandroid on 16-11-14.
 */
public class register_stu extends ActionSupport implements SessionAware{

    String mail,secret,secret_repeat,school,stu_number;
    private Map session;
    boolean isStudent = true;
    boolean isProfessor = false;

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

    public String getStu_number() {
        return stu_number;
    }

    public void setStu_number(String stu_number) {
        this.stu_number = stu_number;
    }

    private void addCookie(String name,String value){
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(60*60*24*365);
        ServletActionContext.getResponse().addCookie(cookie);
    }

    @Override
    public String execute() {
        if (secret.equals("") || secret_repeat.equals("")
                || school.equals("") || mail.equals("") || stu_number.equals("")) {
            session.put("errorMessage", "输入项目不能为空!");
            return ERROR;
        }
        if (!secret_repeat.equals(secret)) {
            session.put("errorMessage", "两次密码不一致!");
            return ERROR;
        }
        String regex = "^[A-Za-z0-9]{1,40}@[A-Za-z0-9]{1,40}\\.[A-Za-z]{2,3}$";
        if (!mail.matches(regex)){
            session.put("errorMessage", "邮箱不符合格式!");
            return ERROR;
        }

        Student stu = new Student(mail,secret);
        stu.setEmailAddress(mail);
        stu.setStudentNo(stu_number);
        stu.setGraduateSchool(school);

        StudentDAO studao = new StudentDAO();
        if (studao.addStudent(stu)) {
            session.put("username", mail);
            session.put("userstyle", "Student");
            return "SUCCESS";
        }
        session.put("errorMessage", "未知的错误发生了，你行走在互联网的荒野");
        return ERROR;
    }

    public void setSession(Map session) {
        this.session = session;
    }
}
