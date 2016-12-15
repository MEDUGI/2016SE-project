package action.applications;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import entity.Application;
import entity.Tools;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Xiangxi on 2016/12/15.
 * Contact him on zxx_1996@qq.com
 */
public class updateApplication extends ActionSupport implements SessionAware {
    String userTo;
    String username;
    String userstyle;
    String message;
    int id;
    Map session;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserTo() {
        return userTo;
    }

    public void setUserTo(String userTo) {
        this.userTo = userTo;
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

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String execute() {
        Application application = new Application();
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
        application.setApplydate(Tools.getDateString());
        ApplicationDAO applicationDAO = new ApplicationDAO();
        applicationDAO.deleteStatus(id);
        applicationDAO.addAppliciation(application);
        return Action.SUCCESS;
    }
}
