package action;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import dao.MessageDAO;
import entity.Application;
import entity.Message;
import entity.Tools;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Xiangxi on 2016/12/14.
 * Contact him on zxx_1996@qq.com
 */
public class replyApplicationAction extends ActionSupport implements SessionAware{
    boolean isAccepted;
    int applicationId;
    Map session;

    public boolean getIsAccepted() {
        return isAccepted;
    }

    public void setIsAccepted(boolean isAccepted) {
        this.isAccepted = isAccepted;
    }

    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String execute() {
        ApplicationDAO applicationDAO = new ApplicationDAO();
        Application application = applicationDAO.getApplicationById(applicationId);
        String user, opposite;
        user = (String)session.get("username");
        String userstyle = (String)session.get("userstyle");
        if (application.getIsFromStudent() == (userstyle.equals("Student")))
            opposite = application.getTo();
        else
            opposite = application.getFrom();
        if (isAccepted) {
            applicationDAO.updateStatus(applicationId, application.getStatus() + 1);
        } else  {
            applicationDAO.deleteStatus(applicationId);
            MessageDAO messageDAO = new MessageDAO();
            Message message = new Message();
            message.setUserFrom(user);
            message.setUserTo(opposite);
            message.setDate(Tools.getDateString());
            message.setStatus(0);
            message.setContent("��Ǹ����������ԭ���Ҵ�ʱ���ܽ���������룬ף�����ҵ���һ�����Ӻ��ʵ�ѡ��!\n������Ϣ��ϵͳ�������벻Ҫ�ظ���");
            messageDAO.addMessage(message);
        }
        return Action.SUCCESS;
    }
}
