package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProfessorDAO;
import dao.StudentDAO;
import entity.Professor;
import entity.Student;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

/**
 * Created by Xiangxi on 2016/11/17.
 */
public class showChangePageAction extends ActionSupport implements SessionAware{
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
    Map session;
    String username = "";
    String userstyle;

    public String getGraduateSchool() {
        return graduateSchool;
    }

    public void setGraduateSchool(String graduateSchool) {
        this.graduateSchool = graduateSchool;
    }

    public String getStudentNo() {
        return studentNo;
    }

    public void setStudentNo(String studentNo) {
        this.studentNo = studentNo;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getAwardsCollection() {
        return awardsCollection;
    }

    public void setAwardsCollection(String awardsCollection) {
        this.awardsCollection = awardsCollection;
    }

    public String getGpa() {
        return gpa;
    }

    public void setGpa(String gpa) {
        this.gpa = gpa;
    }

    public String getNeepScore() {
        return neepScore;
    }

    public void setNeepScore(String neepScore) {
        this.neepScore = neepScore;
    }

    public String getWorkingAreas() {
        return workingAreas;
    }

    public void setWorkingAreas(String workingAreas) {
        this.workingAreas = workingAreas;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getEmployerUnit() {
        return employerUnit;
    }

    public void setEmployerUnit(String employerUnit) {
        this.employerUnit = employerUnit;
    }

    public String getIdentityCardNo() {
        return identityCardNo;
    }

    public void setIdentityCardNo(String identityCardNo) {
        this.identityCardNo = identityCardNo;
    }

    public String getWorkingArea() {
        return workingArea;
    }

    public void setWorkingArea(String workingArea) {
        this.workingArea = workingArea;
    }

    public String getPapersPublished() {
        return papersPublished;
    }

    public void setPapersPublished(String papersPublished) {
        this.papersPublished = papersPublished;
    }

    public String getAccomodationNumber() {
        return accomodationNumber;
    }

    public void setAccomodationNumber(String accomodationNumber) {
        this.accomodationNumber = accomodationNumber;
    }

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
    }

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

    @Override
    public String execute() throws Exception {
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
            return SUCCESS;
        }
        return ERROR;
    }
}
