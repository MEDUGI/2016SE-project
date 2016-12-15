package action.messages;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class editMessage extends ActionSupport implements SessionAware{
    String userFrom;
    String userTo;
    Map session;

    public String getUserFrom() {
        return userFrom;
    }

    public void setUserFrom(String userFrom) {
        this.userFrom = userFrom;
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

    public String execute() {
        userFrom = (String)session.get("username");
        userTo = (String)session.get("watchedUsername");
        return "SUCCESS";
    }
}
