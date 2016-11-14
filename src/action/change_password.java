package action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by forandroid on 16-11-14.
 */
public class change_password extends ActionSupport {

    String mail,secret,secret_repeat;

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
                || mail.equals(""))
            return "NULL";
        if (!secret_repeat.equals(secret)) return "NOT_SAME";
        String regex = "^[A-Za-z]{1,40}@[A-Za-z0-9]{1,40}\\.[A-Za-z]{2,3}$";
        if (!mail.matches(regex)) return "MAIL";


        return "SUCCESS";
    }
}
