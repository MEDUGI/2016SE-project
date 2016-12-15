package action.messages;

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
    Message[] receivedMessages;
    Message[] sentMessages;
    Message[] trashMessages;

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

    public String execute() {
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        MessageDAO messageDAO = new MessageDAO();

        ArrayList<Message> sentMessageList = messageDAO.getMessageListByUserID(username, 0, 0);
        sentMessageList.addAll(messageDAO.getMessageListByUserID(username,1,0));
        sentMessages = (Message[]) sentMessageList.toArray(new Message[sentMessageList.size()]);

        ArrayList<Message> unreadMessages = messageDAO.getMessageListByUserID(username, 0, 1);
        ArrayList<Message> readMessages = messageDAO.getMessageListByUserID(username, 1, 1);
        unreadMessages.addAll(readMessages);
        receivedMessages = (Message[]) unreadMessages.toArray(new Message[unreadMessages.size()]);

        ArrayList<Message> trashMessagesList = messageDAO.getMessageListByUserID(username, 2, 1);
        trashMessages = (Message[]) trashMessagesList.toArray(new Message[trashMessagesList.size()]);
        return Action.SUCCESS;
    }
}
