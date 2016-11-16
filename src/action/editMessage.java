package action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class editMessage extends ActionSupport {
    private String returnMessage = "";

    public String getReturnMessage() {
        return returnMessage;
    }

    public void setReturnMessage(String returnMessage) {
        this.returnMessage = returnMessage;
    }

    public String execute() {
        System.out.println(returnMessage);
        return "SUCCESS";
    }
}
