package action.frames;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Xiangxi on 2016/11/18.
 */
public class indexActionClass extends ActionSupport implements SessionAware{
    Map session;

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    @Override
    public String execute() throws Exception {
        if (session.containsKey("username"))
            return "logged";
        return "unlogged";
    }
}
