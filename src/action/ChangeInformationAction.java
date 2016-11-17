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
public class ChangeInformationAction extends ActionSupport implements SessionAware{
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

    public Map getSession() {
        return session;
    }

    public void setSession(Map session) {
        this.session = session;
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

    public String getAccomodationNumber() {
        return accomodationNumber;
    }

    public void setAccomodationNumber(String accomodationNumber) {
        this.accomodationNumber = accomodationNumber;
    }

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

    public String execute() {
        username = (String)session.get("username");
        userstyle = (String)session.get("userstyle");
        if (userstyle.equals("Student")) {
            Student student = new Student(username, "");
            student.setGraduateSchool(graduateSchool);
            student.setStudentNo(studentNo);
            student.setGpa(Double.parseDouble(gpa));
            student.setNeepScore(Double.parseDouble(neepScore));
            student.setAwardsCollection(awardsCollection);
            student.setEmailAddress(emailAddress);
            student.setWorkingAreas(workingAreas);
            student.setMobileNo(mobileNo);
            StudentDAO studentDAO = new StudentDAO();
            studentDAO.updateStudent(student);
            return SUCCESS;
        }
        if (userstyle.equals("Professor")) {
            Professor professor = new Professor(username, "");
            professor.setEmployerUnit(employerUnit);
            professor.setIdentityCardNo(identityCardNo);
            professor.setWorkingArea(workingArea);
            professor.setPapersPublished(papersPublished);
            professor.setAccomodationNumber(Integer.parseInt(accomodationNumber));
            professor.setEmailAddress(emailAddress);
            professor.setMobileNo(mobileNo);
            ProfessorDAO professorDAO = new ProfessorDAO();
            professorDAO.updateProfessor(professor);
            return SUCCESS;
        }
        return ERROR;
    }
}
