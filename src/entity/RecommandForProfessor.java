package entity;

import dao.StudentDAO;

import java.util.ArrayList;

/**
 * Created by 李沅泽 on 2016/11/16.
 */
public class RecommandForProfessor {

    public ArrayList<Student> execWithRestraint(Professor pro) {
        return new StudentDAO().getStudentRecomentation(pro);
    }
}
