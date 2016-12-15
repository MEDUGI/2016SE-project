package action.personalInfo;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by forandroid on 16-12-12.
 */
public class create_resumeAction extends ActionSupport implements SessionAware{
    String username;
    String userstyle;
    Map session;
    protected String graduateSchool;                        // 50 characters at most
    protected String studentNo;                             // 20 characters at most
    protected String emailAddress;                          // 60 characters at most
    protected String awardsCollection;                      // 500 characters at most
    protected String gpa;
    protected String neepScore;
    protected String workingAreas;                          // 60 characters at most
    protected String mobileNo;                              // 30 characters at most
    protected String employerUnit;
    protected String identityCardNo;
    protected String workingArea;
    protected String papersPublished;
    protected String accomodationNumber;
    protected String fullname;
    protected String major;
    protected String introduction;
    protected String physicalAddress;

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

    @Override
    public String execute() {
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        Student mainpageStudent;
        Professor professor;
        if (userstyle.equals("Student")) {
            StudentDAO studentDAO = new StudentDAO();
            mainpageStudent = studentDAO.getStudent(username);
            graduateSchool = mainpageStudent.getGraduateSchool();
            studentNo = mainpageStudent.getStudentNo();
            gpa = Double.toString(mainpageStudent.getGpa());
            neepScore = Double.toString(mainpageStudent.getNeepScore());
            awardsCollection = mainpageStudent.getAwardsCollection();
            emailAddress = mainpageStudent.getEmailAddress();
            workingAreas = mainpageStudent.getWorkingAreas();
            mobileNo = mainpageStudent.getMobileNo();
            fullname = mainpageStudent.getFullname();
            major = mainpageStudent.getMajor();
            introduction = mainpageStudent.getIntroduction();
            physicalAddress = mainpageStudent.getPhysicalAddress();
            return SUCCESS;
        }
        if (userstyle.equals("Professor")) {
            ProfessorDAO professorDAO = new ProfessorDAO();
            professor = professorDAO.getProfessor(username);
            employerUnit = professor.getEmployerUnit();
            identityCardNo = professor.getIdentityCardNo();
            workingArea = professor.getWorkingArea();
            papersPublished = professor.getPapersPublished();
            accomodationNumber = Integer.toString(professor.getAccomodationNumber());
            emailAddress = professor.getEmailAddress();
            mobileNo = professor.getMobileNo();
            fullname = professor.getFullname();
            major = professor.getMajor();
            introduction = professor.getIntroduction();
            physicalAddress = professor.getPhysicalAddress();
            return SUCCESS;
        }
        return ERROR;
    }

}
