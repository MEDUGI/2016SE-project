package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import entity.Professor;

/**
 * Created by forandroid on 16-11-14.
 */
public class register_teacher extends ActionSupport {
    String mail, secret, secret_repeat, school, teacher_id;

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

    @Override
    public String execute() {
        if (secret.equals("") || secret_repeat.equals("")
                || school.equals("") || mail.equals("") || teacher_id.equals(""))
            return "NULL";
        if (!secret_repeat.equals(secret)) return "NOT_SAME";

        String regex = "^[A-Za-z]{1,40}@[A-Za-z0-9]{1,40}\\.[A-Za-z]{2,3}$";
        if (!mail.matches(regex)) return "MAIL";

        Professor pro = new Professor(mail, secret);
        pro.setEmailAddress(mail);
        pro.setIdentityCardNo(teacher_id);
        ProfessorDAO prodao = new ProfessorDAO();
        prodao.addProfessor(pro);

        return "SUCCESS";
    }
}

