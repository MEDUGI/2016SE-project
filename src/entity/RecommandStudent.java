package entity;

import dao.ProfessorDAO;

import java.util.ArrayList;

/**
 * Created by 李沅泽 on 2016/11/16.
 */
public class RecommandStudent{

    public ArrayList execWithRestraint(Student stu) {
        return new ProfessorDAO().getProfessorRecomentation(stu);
    }
}
