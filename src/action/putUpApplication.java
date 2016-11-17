package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import dao.ProfessorDAO;
import entity.Application;
import entity.Tools;

import java.util.Date;

/**
 * Created by 李沅泽 on 2016/11/16.
 */
public class putUpApplication extends ActionSupport{
    private String stu,pro,message;

    public String getStu() {
        return stu;
    }

    public void setStu(String stu) {
        this.stu = stu;
    }

    public String getPro() {
        return pro;
    }

    public void setPro(String pro) {
        this.pro = pro;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String execute() {
        if (!Tools.examMessage(message)) {
            return "MESSAGE_INVALID";
        }
        if (new ProfessorDAO().getProfessor(pro).getAccomodationNumber() != 0) {
            return "OUT_OF_AMOUNT";
        }
        Application app = new Application();
        app.setStu(stu);
        app.setPro(pro);
        app.setApplydate(new Date().toString());
        app.setStatus(0);
        app.setMessage(message);
        new ApplicationDAO().addAppliciation(app);
        return "SUCCESS";
    }
}
