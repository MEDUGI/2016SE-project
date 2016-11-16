package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.MessageDAO;
import entity.Message;
import entity.Tools;

import java.util.Date;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class sendMessage extends ActionSupport {
    private String message,userFrom,userTo,userFromStyle,userToStyle;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getUserFromStyle() {
        return userFromStyle;
    }

    public void setUserFromStyle(String userFromStyle) {
        this.userFromStyle = userFromStyle;
    }

    public String getUserToStyle() {
        return userToStyle;
    }

    public void setUserToStyle(String userToStyle) {
        this.userToStyle = userToStyle;
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
        if (!Tools.examUserWithStyle(userFrom,userFromStyle)) {
            return "INVALID_USER";
        }
        if (!Tools.examUserWithStyle(userTo,userToStyle)) {
            return "USER_CANNOT_FIND";
        }
        if (!Tools.examMessage(message)) {
            return "MESSAGE_INVALID";
        }
        Date dat = new Date();
        Message msg = new Message(userFrom,userFromStyle,userTo,userToStyle, dat.toString(),message);
        MessageDAO mdao = new MessageDAO();
        mdao.addMessage(msg);
        return "SUCCESS";
    }
}
