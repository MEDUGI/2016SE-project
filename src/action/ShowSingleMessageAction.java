package action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.MessageDAO;
import entity.Message;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Xiangxi on 2016/12/14.
 * Contact him on zxx_1996@qq.com
 */
public class ShowSingleMessageAction extends ActionSupport implements SessionAware{
    int messageId;
    String userFrom;
    String userTo;
    String title;
    String date;
    String content;
    String opposite;
    String username;
    Map session;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getMessageId() {
        return messageId;
    }

    public void setMessageId(int messageId) {
        this.messageId = messageId;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getOpposite() {
        return opposite;
    }

    public void setOpposite(String opposite) {
        this.opposite = opposite;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String execute() {
        MessageDAO messageDAO = new MessageDAO();
        Message message = messageDAO.getMessageById(messageId);
        userFrom = message.getUserFrom();
        userTo = message.getUserTo();
        title = message.getTitle();
        content = message.getContent();
        date = message.getDate();
        username = (String)session.get("username");
        if (userFrom.equals(username))
            opposite = userTo;
        else
            opposite = userFrom;
        return Action.SUCCESS;
    }

}
