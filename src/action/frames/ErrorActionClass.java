package action.frames;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Xiangxi on 2016/11/18.
 */
public class ErrorActionClass extends ActionSupport implements SessionAware{
    Map session;
    String errorMessage;

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    @Override
    public String execute() throws Exception {
        if (session.containsKey("errorMessage")) {
            errorMessage = (String)session.get("errorMessage");
            session.remove("errorMessage");
            return SUCCESS;
        } else {
            errorMessage = "���ǲ�֪����ʲô���������˴�����棻����û�м�⵽�κδ��󣬶�����������Ĵ���";
            return SUCCESS;
        }
    }
}
