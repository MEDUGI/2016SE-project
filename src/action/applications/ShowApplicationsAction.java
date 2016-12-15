package action.applications;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import entity.Application;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.Map;

/**
 * Created by Xiangxi on 2016/12/13.
 * Contact him on zxx_1996@qq.com
 */
public class ShowApplicationsAction extends ActionSupport implements SessionAware {
    Map session;
    ArrayList<Application> receivedApplication = new ArrayList<>();
    ArrayList<Application> myApplication = new ArrayList<>();
    ArrayList<Application> succeededApplication = new ArrayList<>();
    String username;
    String userstyle;
    //TODO: ¼ÓÈë×°ÊÎÆ÷
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

    public ArrayList<Application> getReceivedApplication() {
        return receivedApplication;
    }

    public void setReceivedApplication(ArrayList<Application> receivedApplication) {
        this.receivedApplication = receivedApplication;
    }

    public ArrayList<Application> getMyApplication() {
        return myApplication;
    }

    public void setMyApplication(ArrayList<Application> myApplication) {
        this.myApplication = myApplication;
    }

    public ArrayList<Application> getSucceededApplication() {
        return succeededApplication;
    }

    public void setSucceededApplication(ArrayList<Application> succeededApplication) {
        this.succeededApplication = succeededApplication;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    private void deliverApplications(ArrayList<Application> allApplications) {
        for(Application application : allApplications) {
            if (application.getStatus() == 2) {
                succeededApplication.add(application);
                continue;
            }
            if ((application.getTo().equals(username) && application.getStatus() == 0) ||
                    application.getFrom().equals(username) && application.getStatus() == 1) {
                receivedApplication.add(application);
                continue;
            }
            if (application.getFrom().equals(username)) {
                myApplication.add(application);
            }
        }
    }

    public String execute() {
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        ApplicationDAO applicationDAO = new ApplicationDAO();
        ArrayList<Application> allApplications = applicationDAO.findAllApplicationByUser(username);
        deliverApplications(allApplications);
        if (myApplication.size() != 0 && receivedApplication.size() != 0) System.out.println("Wrong");
        return Action.SUCCESS;
    }
}
