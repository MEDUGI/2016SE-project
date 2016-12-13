package entity;

import dao.StudentDAO;
import dao.ProfessorDAO;

import java.util.Calendar;

/**
 * Created by 李沅泽 on 2016/11/15.
 */
public class Tools {

    public static String addUserStyleSymbol(String ID, String style) {
        if (style == "Student") {
            return "S"+ID;
        }
        else return "P"+ID;
    }

    public static boolean examUserWithStyle(String username, String userStyle) {
        if (userStyle == "Professor") {
            return Tools.examTeacher(username);
        }
        else return Tools.examStudent(username);
    }

    public static boolean examStudent(String username) {
        StudentDAO studao = new StudentDAO();
        if (studao.getStudent(username).getPassword() == "") {
            return false;
        }
        else  return true;
    }

    public static boolean examTeacher(String username) {
        ProfessorDAO prodao = new ProfessorDAO();
        if (prodao.getProfessor(username).getPassword() == "") {
            return false;
        }
        else  return true;
    }

    public static boolean examMessage(String content) {
        //TODO
        return true;
    }
    public static String getDateString() {
        Calendar calendar = Calendar.getInstance();
        return calendar.get(Calendar.YEAR) + "/" +
                (calendar.get(Calendar.MONTH)+1) + "/"+
                calendar.get(Calendar.DATE);
    }
    public static boolean usernameExisted(String username) {
        StudentDAO studentDAO = new StudentDAO();
        ProfessorDAO professorDAO = new ProfessorDAO();
        if (studentDAO.getStudent(username)==null && professorDAO.getProfessor(username) == null)
            return false;
        return true;
    }
}
