package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.Recommand;
import entity.RecommandProfessor;
import entity.RecommandStudent;
import entity.Tools;

/**
 * Created by 李沅泽 on 2016/11/16.
 */
public class recommand extends ActionSupport{
    private String user, userstyle;
    public String execute() {
        if (Tools.examUserWithStyle(user,userstyle)) {
            if (userstyle == "Student") {
                RecommandStudent recs = new RecommandStudent();

            }
            else {
                RecommandProfessor recp = new RecommandProfessor();
            }
        }
        else return "USER_NOT_FOUND";
    }
}
