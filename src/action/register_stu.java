package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.Student;
import dao.StudentDAO;
/**
 * Created by forandroid on 16-11-14.
 */
public class register_stu extends ActionSupport {

    String mail,secret,secret_repeat,school,stu_number;

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

    @Override
    public String execute() {
        if (secret.equals("") || secret_repeat.equals("")
                || school.equals("") || mail.equals("") || stu_number.equals(""))
            return "NULL";
        if (!secret_repeat.equals(secret)) return "NOT_SAME";
        String regex = "^[A-Za-z]{1,40}@[A-Za-z0-9]{1,40}\\.[A-Za-z]{2,3}$";
        if (!mail.matches(regex)) return "MAIL";

        Student stu = new Student(mail,secret);
        stu.setEmailAddress(mail);
        stu.setGraduateSchool(school);

        StudentDAO studao = new StudentDAO();
        studao.addStudent(stu);
        return "SUCESS";
    }
}
