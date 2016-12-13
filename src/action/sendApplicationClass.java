package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import entity.Application;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Calendar;
import java.util.Map;

/**
 * Created by Xiangxi on 2016/12/13.
 * Contact him on zxx_1996@qq.com
 */
public class sendApplicationClass extends ActionSupport implements SessionAware{
    String userTo;
    String username;
    String userstyle;
    String message;
    Application application = new Application();

    Map session;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUserTo() {
        return userTo;
    }

    public void setUserTo(String userTo) {
        this.userTo = userTo;
    }

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

    public String getUserstyle() {
        return userstyle;
    }

    public void setUserstyle(String userstyle) {
        this.userstyle = userstyle;
    }

    public Application getApplication() {
        return application;
    }

    public void setApplication(Application application) {
        this.application = application;
    }

    public String execute() {
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        application.setFrom(username);
        application.setTo(userTo);
        if (userstyle.equals("Student")) {
            application.setIsFromStudent(true);
        } else {
            application.setIsFromStudent(false);
        }
        application.setStatus(0);
        application.setMessage(message);
        Calendar calendar = Calendar.getInstance();
        application.setApplydate(calendar.get(Calendar.YEAR) + "/" +
                (calendar.get(Calendar.MONTH)+1) + "/"+
                calendar.get(Calendar.DATE));
        ApplicationDAO applicationDAO = new ApplicationDAO();
        applicationDAO.addAppliciation(application);
        return "SUCCESS";
    }
}
