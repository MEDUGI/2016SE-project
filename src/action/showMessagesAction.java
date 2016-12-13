package action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.MessageDAO;
import entity.Message;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.Map;

/**
 * Created by Xiangxi on 2016/12/14.
 * Contact him on zxx_1996@qq.com
 */
public class showMessagesAction extends ActionSupport implements SessionAware{
    Map session;
    String username;
    String userstyle;
    ArrayList<Message> unreadMessages = new ArrayList<>();
    ArrayList<Message> readMessages = new ArrayList<>();
    //TODO: ¼ÓÈë×°ÊÎÆ÷


    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
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

    public ArrayList<Message> getUnreadMessages() {
        return unreadMessages;
    }

    public void setUnreadMessages(ArrayList<Message> unreadMessages) {
        this.unreadMessages = unreadMessages;
    }

    public ArrayList<Message> getReadMessages() {
        return readMessages;
    }

    public void setReadMessages(ArrayList<Message> readMessages) {
        this.readMessages = readMessages;
    }

    public String execute() {
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        MessageDAO messageDAO = new MessageDAO();
        unreadMessages = messageDAO.getMessageListByUserID(username, 0, 1);
        readMessages = messageDAO.getMessageListByUserID(username, 1, 1);
        return Action.SUCCESS;
    }
}
