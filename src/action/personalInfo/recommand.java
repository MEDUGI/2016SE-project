package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.RecommandProfessor;
import entity.RecommandStudent;
import entity.Tools;
import org.apache.struts2.interceptor.SessionAware;

import java.util.ArrayList;
import java.util.Map;

/**
 * Created by 李沅泽 on 2016/11/16.
 */
public class recommand extends ActionSupport implements SessionAware {
    private String user, userstyle;
    private ArrayList result;
    Map session;

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getUserstyle() {
        return userstyle;
    }

    public void setUserstyle(String userstyle) {
        this.userstyle = userstyle;
    }

    public ArrayList getResult() {
        return result;
    }

    public void setResult(ArrayList result) {
        this.result = result;
    }

    public String execute() {
        user = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        if (Tools.examUserWithStyle(user,userstyle)) {
            if (userstyle == "Student") {
                RecommandStudent recs = new RecommandStudent();
                result = recs.execWithRestraint(new StudentDAO().getStudent(user));
                return "SUCCESS";
            }
            else {
                RecommandProfessor recp = new RecommandProfessor();
                result = recp.execWithRestraint(new ProfessorDAO().getProfessor(user));
                return "SUCCESS";
            }
        }
        else return "USER_NOT_FOUND";
    }
}
