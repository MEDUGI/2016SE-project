package action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.MessageDAO;
import entity.Message;
import entity.Tools;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class sendMessage extends ActionSupport {
    private String message,userFrom,userTo;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

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

    public String execute() {
        Message msg = new Message();
        msg.setUserFrom(userFrom);
        msg.setUserTo(userTo);
        msg.setContent(message);
        msg.setStatus(0);
        Calendar calendar = Calendar.getInstance();
        msg.setDate(calendar.get(Calendar.YEAR) + "/" +
                (calendar.get(Calendar.MONTH) + 1) + "/" +
                calendar.get(Calendar.DATE));
        MessageDAO mdao = new MessageDAO();
        mdao.addMessage(msg);
        return Action.SUCCESS;
    }
}
