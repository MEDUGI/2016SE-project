package action.applications;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Result;
import dao.ApplicationDAO;
import dao.MessageDAO;
import dao.ProfessorDAO;
import entity.Application;
import entity.Message;
import entity.Professor;
import entity.Tools;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
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

    public boolean updateAcceptedNo(Application application) {
        String professorUsername;
        if (application.getIsFromStudent()) {
             professorUsername = application.getTo();
        } else {
            professorUsername = application.getFrom();
        }
        ProfessorDAO professorDAO = new ProfessorDAO();
        Professor professor = professorDAO.getProfessor(professorUsername);
        if (professor.getAcceptedNumber() == professor.getAccomodationNumber())
            return false;
        professor.setAcceptedNumber(professor.getAcceptedNumber()+1);
        professorDAO.addAcceptedNoProfessor(professor);
        return true;
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
            if (application.getStatus() == 1) {
                boolean updateResult = updateAcceptedNo(application);
                if (!updateResult) {
                    session.put("errorMessage", "��ʦ���������������꣡");
                    session.put("errorTitle", "Full application");
                    return Action.ERROR;
                }
                String studentUsername;
                if (application.getIsFromStudent() == true) {
                     studentUsername = application.getFrom();
                } else
                    studentUsername = application.getTo();
                ArrayList<Application> allApplications = applicationDAO.findAllApplicationByUser(studentUsername);
                for(Application oneApplication : allApplications) {
                    if (oneApplication.getStatus() != 2)
                        applicationDAO.deleteStatus(oneApplication.getID());
                }
            }
        } else {
            applicationDAO.deleteStatus(applicationId);
            MessageDAO messageDAO = new MessageDAO();
            Message message = new Message();
            message.setUserFrom(user);
            message.setUserTo(opposite);
            message.setDate(Tools.getDateString());
            message.setStatus(0);
            message.setTitle("��ϵ����δ�ɹ�");
            message.setContent("��Ǹ����������ԭ���Ҵ�ʱ���ܽ���������룬ף�����ҵ���һ�����Ӻ��ʵ�ѡ��!\n������Ϣ��ϵͳ�������벻Ҫ�ظ���");
            messageDAO.addMessage(message);
        }
        return Action.SUCCESS;
    }
}
