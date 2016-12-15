package action.applications;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import entity.Application;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Xiangxi on 2016/12/14.
 * Contact him on zxx_1996@qq.com
 */
public class modifyApplicationAction extends ActionSupport{
    int applicationId;
    String userTo;
    String message;

    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public String getUserTo() {
        return userTo;
    }

    public void setUserTo(String userTo) {
        this.userTo = userTo;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String execute() {
        ApplicationDAO applicationDAO = new ApplicationDAO();
        Application application = applicationDAO.getApplicationById(applicationId);
        userTo = application.getTo();
        message = application.getMessage();
        return Action.SUCCESS;
    }
}
