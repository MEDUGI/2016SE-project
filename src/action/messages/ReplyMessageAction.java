package action.messages;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.MessageDAO;
import entity.Message;

/**
 * Created by Xiangxi on 2016/12/14.
 * Contact him on zxx_1996@qq.com
 */
public class ReplyMessageAction extends ActionSupport{
    int id;
    String userFrom;
    String userTo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
        MessageDAO messageDAO = new MessageDAO();
        Message message = messageDAO.getMessageById(id);
        userFrom = message.getUserTo();
        userTo = message.getUserFrom();
        return Action.SUCCESS;
    }

}
