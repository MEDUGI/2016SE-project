package action.applications;

import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import entity.Application;
import entity.Professor;
import org.apache.struts2.interceptor.SessionAware;

import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

/**
 * Created by 李沅泽 on 2016/11/16.
 */
public class editApplication extends ActionSupport{
    String userTo;

    public String getUserTo() {
        return userTo;
    }

    public void setUserTo(String userTo) {
        this.userTo = userTo;
    }

    public String execute() {

        return "SUCCESS";
    }
}
