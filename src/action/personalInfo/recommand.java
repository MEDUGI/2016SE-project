package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import dao.ApplicationDAO;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.*;
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

    public ArrayList<Professor> dropAppliedForStudent(String username, ArrayList<Professor> others) {
        ArrayList<Professor> result = new ArrayList<>();
        ApplicationDAO applicationDAO = new ApplicationDAO();
        for(Professor user : others) {
            if (!applicationDAO.hasApplicationBetween(username, user.getUsername()))
                result.add(user);
        }
        return result;
    }
    public ArrayList<Student> dropAppliedForProfessor(String username, ArrayList<Student> others) {
        ArrayList<Student> result = new ArrayList<>();
        ApplicationDAO applicationDAO = new ApplicationDAO();
        for(Student user : others) {
            if (!applicationDAO.hasApplicationBetween(username, user.getUsername()))
                result.add(user);
        }
        return result;
    }


    public String execute() {
        user = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        if (Tools.examUserWithStyle(user,userstyle)) {
            if (userstyle.equals("Student")) {
                RecommandForStudent recs = new RecommandForStudent();
                result = recs.execWithRestraint(new StudentDAO().getStudent(user));
                result = dropAppliedForStudent(user, result);
                return "SUCCESS";
            }
            else {
                RecommandForProfessor recp = new RecommandForProfessor();
                result = recp.execWithRestraint(new ProfessorDAO().getProfessor(user));
                result = dropAppliedForProfessor(user, result);
                return "SUCCESS";
            }
        }
        else return "USER_NOT_FOUND";
    }
}
