package action.messages;

import com.opensymphony.xwork2.Action;
import dao.MessageDAO;
import entity.Message;

/**
 * Created by Xiangxi on 2016/12/14.
 * Contact him on zxx_1996@qq.com
 */
public class DeleteMessageAction {
    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String execute() {
        MessageDAO messageDAO = new MessageDAO();
        Message message = messageDAO.getMessageById(id);
        messageDAO.deleteMessage(id);
        message.setStatus(2);
        messageDAO.addMessage(message);
        return Action.SUCCESS;
    }
}
